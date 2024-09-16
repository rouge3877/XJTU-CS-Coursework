#include "cachelab.h"
#include <getopt.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <math.h>

typedef unsigned long long int mem_addr_t;

typedef struct cache_line
{
  bool _valid;
  mem_addr_t _t_bits;
  unsigned long long int time;
  //mem_addr_t _s_bits;
  //mem_addr_t _b_bits;
} cache_line;

typedef struct cache
{
  cache_line **_cache;
  int _set_num;
  int _caches_associate;
} cache;

typedef cache_line *cache_set;

int hit_count = 0;
int miss_count = 0;
int eviction_count = 0;
bool trace_open = false;
unsigned long long int sys_sim_time = 0;

void printHelp (void);
FILE *readFile (char *);
cache createCache (int, int, int);
int analizeAddr (int, int, int, mem_addr_t *, mem_addr_t);
void freeCache (cache);
void loadCache (cache, mem_addr_t, int, bool);
void storeCache (cache, mem_addr_t, int, bool);
void modifyCache (cache, mem_addr_t, int, bool);


int
main (int argc, char **argv)
{
  int opt, s, E, b;
  char *trace_file;

  while (-1 != (opt = getopt (argc, argv, "s:E:b:t:vh")))
	{
	  /* determine which argument processing */
	  switch (opt)
		{
		case 'v':
		  trace_open = true;
		  break;
		case 'h':
		  printHelp ();
		  return 0;
		case 's':
		  s = atoi (optarg);
		  break;
		case 'E':
		  E = atoi (optarg);
		  break;
		case 'b':
		  b = atoi (optarg);
		  break;
		case 't':
		  trace_file = optarg;
		  break;
		default:
		  printHelp ();
		  exit (EXIT_FAILURE);
		  break;
		}
	}

  // init the cache
  cache cache_sim = createCache (1 << s, E, 1 << b);

  // open the file
  FILE *fp = readFile (trace_file);

  char identifier;
  mem_addr_t address;
  int size;
  mem_addr_t this_tag = 0;
  // Reading lines like " L 10,1" or " M 20,1"
  while (fscanf (fp, " %c  %llx,%d", &identifier, &address, &size) > 0)
	{
	  int set_index = analizeAddr (64 - s - b, s, b, &this_tag, address);

	  if (trace_open)
		printf ("%c %llx,%d ", identifier, address, size);


	  switch (identifier)
		{
		case 'M':				// Modify (Load + Store)
		  modifyCache (cache_sim, this_tag, set_index, trace_open);
		  break;
		case 'L':				// Load
		  loadCache (cache_sim, this_tag, set_index, trace_open);
		  break;
		case 'S':				// Store
		  storeCache (cache_sim, this_tag, set_index, trace_open);
		  break;
		}

	  if (trace_open)
		printf ("\n");
	}

  printSummary (hit_count, miss_count, eviction_count);
  freeCache (cache_sim);
  fclose (fp);
  return 0;
}

void
printHelp (void)
{
  printf ("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n");
  printf ("Options:\n");
  printf ("  -h         Print this help message.\n");
  printf ("  -v         Optional verbose flag.\n");
  printf ("  -s <num>   Number of set index bits.\n");
  printf ("  -E <num>   Number of lines per set.\n");
  printf ("  -b <num>   Number of block offset bits.\n");
  printf ("  -t <file>  Trace file.\n");
  printf ("\nExamples:\n");
  printf ("  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n");
  printf ("  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
  return;
}

FILE *
readFile (char *path)
{
  // open the file
  FILE *fp;
  if (strncmp ("./", path, 2) != 0)
	{
	  char *trace_file_path = (char *) malloc (sizeof (5 + strlen (path)));
	  strcpy (trace_file_path, "./");
	  strcat (trace_file_path, path);
	  fp = fopen (trace_file_path, "r");
	  free (trace_file_path);
	}
  else
	{
	  fp = fopen (path, "r");
	}
  if (fp == NULL)
	exit (EXIT_FAILURE);
  return fp;
}

cache
createCache (int set_num, int line_num, int block_size)
{
  cache_line **cache_sim =
	(cache_line **) malloc (sizeof (cache_line *) * set_num);
  for (int i = 0; i < set_num; i++)
	{
	  cache_sim[i] = (cache_line *) malloc (sizeof (cache_line) * line_num);
	  for (int j = 0; j < line_num; j++)
		{
		  cache_sim[i][j]._valid = false;
		  //cache_sim[i][j]._b_bits = 0;
		  //cache_sim[i][j]._s_bits = 0;
		  cache_sim[i][j]._t_bits = 0;
		  cache_sim[i][j].time = 0;
		}
	}
  cache ret;
  ret._cache = cache_sim;
  ret._caches_associate = line_num;
  ret._set_num = set_num;
  return ret;
}

void
freeCache (cache cache_sim)
{
  for (int i = 0; i < cache_sim._set_num; i++)
	{
	  free (cache_sim._cache[i]);
	}
  free (cache_sim._cache);
}

int
analizeAddr (int t, int s, int b, mem_addr_t * tag, mem_addr_t addr)
{
  mem_addr_t mask = 0;
  for (int i = 0; i < t; i++)
	{
	  mask = mask << 1;
	  mask += 1;
	}
  *tag = (addr >> (s + b)) & mask;

  mask = 0;
  for (int i = 0; i < s; i++)
	{
	  mask = mask << 1;
	  mask += 1;
	}
  return (addr >> b) & mask;
}

void
loadCache (cache cache_sim, mem_addr_t tag, int set_index, bool trace_open)
{
  sys_sim_time++;
  cache_set set = cache_sim._cache[set_index];
  for (int i = 0; i < cache_sim._caches_associate; i++)
	{
	  if (set[i]._valid && set[i]._t_bits == tag)
		{
		  set[i].time = sys_sim_time;
		  hit_count++;
		  if (trace_open)
			printf ("hit ");

		  return;
		}
	}

  miss_count++;
  for (int i = 0; i < cache_sim._caches_associate; i++)
	{
	  if (!set[i]._valid)
		{
		  set[i].time = sys_sim_time;
		  set[i]._valid = true;
		  set[i]._t_bits = tag;
		  //set[i]._s_bits = set_index;
		  if (trace_open)
			printf ("miss ");

		  return;
		}
	}

  eviction_count++;
  unsigned long long int biggest_delta = 0;
  int choose_line = 0;
  for (int i = 0; i < cache_sim._caches_associate; i++)
	{
	  if (sys_sim_time - set[i].time > biggest_delta)
		{
		  biggest_delta = sys_sim_time - set[i].time;
		  choose_line = i;
		}
	}
  set[choose_line].time = sys_sim_time;
  set[choose_line]._t_bits = tag;
  //set[choose_line]._s_bits = set_index;
  if (trace_open)
	printf ("miss eviction ");

  return;
}

void
storeCache (cache cache_sim, mem_addr_t tag, int set_index, bool trace_open)
{
  loadCache (cache_sim, tag, set_index, trace_open);
  return;
}

void
modifyCache (cache cache_sim, mem_addr_t tag, int set_index, bool trace_open)
{
  loadCache (cache_sim, tag, set_index, trace_open);
  storeCache (cache_sim, tag, set_index, trace_open);
  return;
}
