#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define MAX_INPUT 1000

typedef struct node {
    struct node *_lchild;
    struct node *_rchild;
    int _choose_sum;
    int _level;
} choose_tree_node, *ptr_node;

ptr_node createNode(int level)
{
    ptr_node create_node = (ptr_node)malloc(sizeof(choose_tree_node));
    create_node->_lchild = create_node->_rchild = NULL;
    create_node->_level = level;
    create_node->_choose_sum = 0;
    return create_node;
}

void addNode(ptr_node parent_node, int level)
{
    parent_node->_lchild = createNode(level);
    parent_node->_lchild->_choose_sum = parent_node->_choose_sum + level * 1;

    parent_node->_rchild = createNode(level);
    parent_node->_rchild->_choose_sum = parent_node->_choose_sum + level * 0;
    return;
}

void makeChooseTree(ptr_node root, int *list, int target, bool *path, int start, FILE *output, int *output_list)
{
    static int count = 0;

    if (*list == -1)
        return;
    if (root->_lchild == NULL && root->_rchild == NULL)
        addNode(root, *list);

    if (root->_lchild->_choose_sum < target) {
        path[start] = 1;
        makeChooseTree(root->_lchild, list + 1, target, path, start + 1, output, output_list);
    } else if (root->_lchild->_choose_sum == target) {
        path[start] = 1;
        count++;
        fprintf(output, "Solution %d: ", count);
        for (int i = 0; i < 6; i++) {
            if (path[i] == 1)
                fprintf(output, "take %d ,", output_list[i]);
            else
                fprintf(output, "do not take %d ,", output_list[i]);
        }
        fprintf(output, "\n");
    }

    if (root->_rchild->_choose_sum < target) {
        path[start] = 0;
        makeChooseTree(root->_rchild, list + 1, target, path, start + 1, output, output_list);
    } else if (root->_rchild->_choose_sum == target) {
        path[start] = 0;
        count++;
        fprintf(output, "Solution %d: ", count);
        for (int i = 0; i < 6; i++) {
            if (path[i] == 1)
                fprintf(output, "take %d ,", output_list[i]);
            else
                fprintf(output, "do not take %d ,", output_list[i]);
        }
        fprintf(output, "\n");
    }
    return;
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
    printf("Usage: main [input_filename] [output_filename]\n");
    printf("Reads data from input_filename and writes the result to output_filename.\n");
    printf("If all arguments are omitted, the program reads from standard input and writes to standard output.\n");
}

int main(int argc, char const *argv[])
{
    // 3个参数，第一个是输入文件，第二个是输出文件，第三个是背包容量
    FILE *input = NULL;
    FILE *output = NULL;
    if (argc == 1) {
        input = stdin;
        output = stdout;
    } else if (argc == 4) {
        if (strcmp(argv[1], "stdin") == 0)
            input = stdin;
        else {
            char *input_path = getAbsolutePath(argv[1]);
            input = fopen(input_path, "r");
            if (!input) {
                fprintf(stderr, "Error: Cannot open file %s\n", input_path);
                exit(EXIT_FAILURE);
                free(input_path);
            }
        }
        if (strcmp(argv[2], "stdout") == 0)
            output = stdout;
        else {
            char *output_path = getAbsolutePath(argv[2]);
            output = fopen(output_path, "w");
            if (!output) {
                fprintf(stderr, "Error: Cannot open file %s\n", output_path);
                exit(EXIT_FAILURE);
            }
            free(output_path);
        }
    } else {
        if (argc == 2 && strcmp(argv[1], "--help") == 0) {
            print_help();
            exit(EXIT_SUCCESS);
        } else {
            if (argc > 4)
                fprintf(stderr, "To much more parameters\n");
            else
                fprintf(stderr, "Missing parameters\n");
            print_help();
            exit(EXIT_FAILURE);
        }
    }
    int T = 0;
    if (argc == 4) {
        T = atoi(argv[3]);
        if (T <= 0) {
            fprintf(stderr, "Error: The third parameter must be a positive integer\n");
            exit(EXIT_FAILURE);
        }
        fprintf(output, "PACKAGE PEOBLEM solution (Package volume: %d): \n", T);
    } else {
        fprintf(stdout, "Please input the capacity of the package: ");
        scanf("%d", &T);
    }

    

    int *item_volumes = NULL;
    int count = getData(&item_volumes, input);
    item_volumes[count] = -1;
    bool *path = (bool *)malloc(sizeof(bool) * count);
    ptr_node root = createNode(0);

    // printf("The capacity of the package is %d\n", T);
    // for(int i = 0; i < count; i++)
    //     printf("%d ", item_volumes[i]);
    // printf("\n");
    // printf("%d\n%d",item_volumes[count],count);

    makeChooseTree(root, item_volumes, T, path, 0, output, item_volumes);

    return 0;
}
