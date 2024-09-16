#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define MAX_INPUT 1000

typedef struct node {
    int _key;
    int _id;
    struct node *_next;
} node, *ptr_node;

void insertNode(node *pre_node, node *insert_node)
{
    pre_node->_next = insert_node;
}

node *createNode(int key, int id)
{
    node *create_node = (node *)malloc(sizeof(node));
    create_node->_id = id;
    create_node->_key = key;
    create_node->_next = NULL;
    return create_node;
}

int deleteNextNode(node *pre_node)
{
    if (pre_node->_next == pre_node) {
        return -1;
    } else {
        ptr_node temp = pre_node->_next;
        pre_node->_next = temp->_next;
        int ret_key = temp->_key;
        return ret_key;
    }
}

node *initRing(int *key_list, int length)
{
    if (length > 1) {
        int index = 1;
        node *begin_node = createNode(key_list[index - 1], index);
        node *this_node = begin_node;
        for (index = 2; index <= length; index++) {
            node *new_node = createNode(key_list[index - 1], index);
            insertNode(this_node, new_node);
            this_node = new_node;
        }
        insertNode(this_node, begin_node);
        return begin_node;
    } else if (length == 1) {
        node *ret_node = createNode(key_list[0], 1);
        insertNode(ret_node, ret_node);
        return ret_node;
    } else {
        fprintf(stderr, "no key list no ring\n");
        return NULL;
    }
}

void simulate(node *first_node, int upper, ptr_node *path, int ret_index)
{

    if (first_node->_next == first_node) {
        path[ret_index] = first_node;
        return;
    }
    node *end_node = first_node;
    for (int index = 1; index < upper - 1; index++) {
        end_node = end_node->_next;
    }
    path[ret_index] = end_node->_next;
    upper = deleteNextNode(end_node);
    if (end_node->_next) // Check for NULL
        simulate(end_node->_next, upper, path, ret_index + 1);
    return;
}

void printPath(ptr_node *path, int length, FILE *output)
{
    for (int i = 0; i < length; i++) {
        fprintf(output, "The %d gays OUT is id=%d and key=%d\n", i + 1, path[i]->_id, path[i]->_key);
    }
}

int getData(int **data, FILE *input_file)
{
    *data = (int *)malloc(sizeof(int) * MAX_INPUT);
    int count = 0;
    int tmp;

    if (input_file == stdin) {
        char c;
        fprintf(stdout, "Please input array with enter as END: \n");

        while (scanf("%d", &tmp)) { // 读取输入的数字
            (*data)[count++] = tmp; // 存入数组
            c = getchar();          // 看下一个字符是否是'\n'
            if (c == '\n') {
                break; // 如果是'\n'，则结束输入
            }
        }
        return count;
    } else {
        while (fscanf(input_file, "%d", &tmp) == 1) {
            // 如果读取到换行符，就跳出循环
            char ch;
            fscanf(input_file, "%c", &ch);
            (*data)[count] = tmp;
            count++;
            if (ch == '\n' || feof(input_file)) {
                break;
            }
        }

        return count;
    }
}

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

void print_help()
{
    printf("Usage: main [input_filename] [output_filename] [key]\n");
    printf("Reads data from input_filename and writes the result to output_filename.\n");
    printf("[key] is the integer as *The first reporting limit*.\n");
    printf("If all arguments are omitted, the program reads from standard input and writes to standard output.\n");
}

int main(int argc, char const *argv[])
{
    // 三个参数，第一个是输入文件，第二个是输出文件，第三个是fiesekey
    FILE *input = NULL;
    FILE *output = NULL;
    if (argc == 1) {
        input = stdin;
        output = stdout;
    } else if (argc == 4) {
        char *input_path = getAbsolutePath(argv[1]);
        char *output_path = getAbsolutePath(argv[2]);
        input = fopen(input_path, "r");
        output = fopen(output_path, "w");
        if (!input) {
            fprintf(stderr, "Error: Cannot open file %s\n", input_path);
            exit(EXIT_FAILURE);
        }
        if (!output) {
            fprintf(stderr, "Error: Cannot open file %s\n", output_path);
            exit(EXIT_FAILURE);
        }
        free(input_path);
        free(output_path);
    } else {
        if (argc == 2 && strcmp(argv[1], "--help") == 0) {
            print_help();
            exit(EXIT_SUCCESS);
        } else {
            fprintf(stderr, "Missing parameters\n");
            print_help();
        }
    }

    int *key_list = NULL;
    int length = getData(&key_list, input);
    if (length == 0) {
        fprintf(stderr, "Error: No data\n");
        exit(EXIT_FAILURE);
    }
    int upper;
    if (argc == 4) {
        upper = atoi(argv[3]);
        if (upper == 0) {
            fprintf(stderr, "Error: No key\n");
            exit(EXIT_FAILURE);
        }
    } else {
        fprintf(stdout, "Please input the first reporting limit: ");
        scanf("%d", &upper);
    }

    // printf("The key list is: %d", length);
    // for (int i = 0; i < length; i++) {
    //     printf("%d ", key_list[i]);
    // }
    // printf("\n");

    ptr_node *path = (ptr_node *)malloc(length * sizeof(ptr_node));
    node *first_node = initRing(key_list, length);
    simulate(first_node, upper, path, 0);
    printPath(path, length, output);
    free(path);

    return 0;
}
