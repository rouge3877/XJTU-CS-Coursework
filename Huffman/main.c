#include "encode.h"

// 提供帮助
void printHelp(FILE *output)
{
    fprintf(output, "Usage: huff -[c|d] <infile> <outfile>\n");
    fprintf(output, "Compress or decompress file using Huffman coding.\n");
    fprintf(output, "<infile>  Input file, it's required to be in the same directory as the executable file.\n");
    fprintf(output, "<outfile> Output file, it's required to be in the same directory as the executable file.\n");
    fprintf(output, "Example: huff -c input.txt output.txt\n");
    fprintf(output, "Using --help or -h to get help.\n");
    fprintf(output, "Options:\n");
    fprintf(output, "  -c  Compress infile to outfile\n");
    fprintf(output, "  -d  Decompress infile to outfile\n");
}

// 获取绝对路径
char *getAbsolutePath(const char *filename)
{
    char buf[1024];
    getcwd(buf, sizeof(buf));
    char *path = (char *)malloc(1024 * sizeof(1024));
    strcpy(path, buf);
    strcat(path, "/");
    strcat(path, filename);
    return path;
}

int main(int argc, char *argv[])
{
    if (argc != 4) {
        if (argc == 2 && (strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0)) {
            printHelp(stdout);
            exit(EXIT_SUCCESS);
        }
        if (argc > 4)
            fprintf(stderr, "Too many arguments\n\n");
        else if (argc < 4)

            fprintf(stderr, "Too few arguments\n\n");
        printHelp(stdout);
        exit(EXIT_FAILURE);
    }
    char *input_path = getAbsolutePath(argv[2]);
    FILE *in = fopen(input_path, "rb");
    free(input_path);
    if (!in) {
        perror("Unable to open <input> file\n");
        exit(EXIT_FAILURE);
    }

    char *output_path = getAbsolutePath(argv[3]);
    FILE *out = fopen(output_path, "wb");
    free(output_path);
    if (!out) {
        perror("Unable to open <output> file\n");
        exit(EXIT_FAILURE);
    }

    if (argv[1][0] == '-' && argv[1][1] == 'c') {
        Huffman_Compress(in, out);
    } else if (argv[1][0] == '-' && argv[1][1] == 'd') {
        Huffman_Uncompress(in, out);
    } else {
        fprintf(stderr, "Unknown command\n\n");
        printHelp(stdout);
        exit(EXIT_FAILURE);
    }

    fclose(in);
    fclose(out);

    return 0;
}
