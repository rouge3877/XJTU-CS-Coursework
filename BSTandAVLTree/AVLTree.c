#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define MAX(A, B) A > B ? A : B
#define MAX_INPUT 10000

typedef struct node {
    int _val;
    struct node *_lchild;
    struct node *_rchild;
    int _height;
} avlnode, *avl;

avl createNode(int val)
{
    avl newnode = (avl)malloc(sizeof(avlnode));
    newnode->_lchild = newnode->_rchild = NULL;
    newnode->_height = 1;
    newnode->_val = val;
    return newnode;
}

int getHeightREAD(avl root)
{
    if (root)
        return root->_height;
    else
        return 0;
}

int getHeight(avl root)
{
    root->_height = MAX(getHeightREAD(root->_lchild), getHeightREAD(root->_rchild)) + 1;
    return root->_height;
}

int balanceFactor(avl root)
{
    if (root)
        return getHeightREAD(root->_lchild) - getHeightREAD(root->_rchild);
    else
        return 0;
}

avl LL_rotation(avl root)
{
    avl new_root = root->_rchild;
    root->_rchild = new_root->_lchild;
    new_root->_lchild = root;
    getHeight(root);
    getHeight(new_root);
    return new_root;
}

avl RR_rotation(avl root)
{
    avl new_root = root->_lchild;
    root->_lchild = new_root->_rchild;
    new_root->_rchild = root;
    getHeight(root);
    getHeight(new_root);
    return new_root;
}

avl insertNode(avl root, int val)
{
    if (!root)
        return createNode(val);
    else if (val < root->_val)
        root->_lchild = insertNode(root->_lchild, val);
    else if (val > root->_val)
        root->_rchild = insertNode(root->_rchild, val);
    else {
        fprintf(stderr, "The avl %d is existed!\n", val);
        return root;
    }

    getHeight(root);

    int balance = balanceFactor(root);
    if (balance > 1 && balanceFactor(root->_lchild) > 0) {
        root = RR_rotation(root);
    } else if (balance > 1 && balanceFactor(root->_lchild) < 0) {
        root->_lchild = LL_rotation(root->_lchild);
        root = RR_rotation(root);
    } else if (balance < -1 && balanceFactor(root->_rchild) > 0) {
        root->_rchild = RR_rotation(root->_rchild);
        root = LL_rotation(root);
    } else if (balance < -1 && balanceFactor(root->_rchild) < 0) {
        root = LL_rotation(root);
    }

    return root;
}

// 计算查找长度
double _AverageSearchPath(avl T, int level)
{
    if (T == NULL)
        return 0;
    double sum = 0;
    sum += level;
    sum += _AverageSearchPath(T->_lchild, level + 1);
    sum += _AverageSearchPath(T->_rchild, level + 1);
    return sum;
}

// 计算平均查找长度
double AverageSearchPath(avl T, int n)
{
    return _AverageSearchPath(T, 1) / n;
}

void layerOrderPut(avl root)
{
    avl a[MAX_INPUT] = {0};
    int top = 0;
    int end = 0;
    a[top] = root;
    top++;
    while (top - end > 0) {
        avl this_root = a[end];
        end++;
        if (this_root->_lchild) {
            a[top] = this_root->_lchild;
            top++;
        }
        if (this_root->_rchild) {
            a[top] = this_root->_rchild;
            top++;
        }
        printf("%d ", this_root->_val);
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
            if (ch == '\n' || feof(input_file)) {
                break;
            }
            (*data)[count] = tmp;
            count++;
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

void question1(avl *T, int *count_ptr, FILE *input, FILE *output)
{
    fprintf(output, "-------------QUESTION 1-------------\n");
    int *data;
    *count_ptr = getData(&data, input); // 获得数列数据和数列长度
    if (output != stdout) {
        fprintf(output, "Input from the input file: ");
        for (int i = 0; i < *count_ptr; i++)
            fprintf(output, "%d ", data[i]);
        fprintf(output, "\n");
    } else if (output == stdout && input != stdin) {
        fprintf(output, "Input from the input file: ");
        for (int i = 0; i < *count_ptr; i++)
            fprintf(output, "%d ", data[i]);
        fprintf(output, "\n");
    }

    for (int i = 0; i < *count_ptr; i++)
        *T = insertNode(*T, data[i]);
    return;
}

void question2(avl T, int num, FILE *output)
{
    fprintf(output, "\n");
    fprintf(output, "-------------QUESTION 2-------------\n");
    double average = AverageSearchPath(T, num);
    fprintf(output, "Average Search Path: %lf\n", average);
    fprintf(output, "\n----------------END.----------------\n");
    return;
}

void print_help()
{
    printf("Usage: main_avl [input_filename] [output_filename]\n");
    printf("Reads numbers from input_filename and writes the results to output_filename.\n");
    printf("If no filenames are provided, reads from standard input and writes to standard output.\n");
}

int main(int argc, char *argv[])
{
    avl root = NULL;
    int count = 0;
    if (argc == 2) {
        if (strcmp(argv[1], "--help") == 0)
            print_help();
        else {
            fprintf(stderr, "Missing parameters\n");
            print_help();
        }
    } else if (argc == 3) {
        FILE *input = NULL;
        FILE *output = NULL;
        if (strcmp(argv[1], "stdin") == 0)
            input = stdin;
        else {
            char *pathin = getAbsolutePath(argv[1]);
            input = fopen(pathin, "r");
            if (!input) {
                fprintf(stderr, "Unable to open input file: \"%s\".\n", argv[1]);
                exit(1);
            }
        }

        if (strcmp(argv[2], "stdout") == 0)
            output = stdout;
        else {
            char *pathout = getAbsolutePath(argv[2]);
            output = fopen(pathout, "w");
            if (!output) {
                fprintf(stderr, "Unable to open ourput file.\n");
                exit(1);
            }
        }
        if (output != stdout)
            fprintf(output, "ANSWER OF AVL\n");
        question1(&root, &count, input, output);
        question2(root, count, output);
    } else if (argc == 1) {
        question1(&root, &count, stdin, stdout);
        question2(root, count, stdout);
    } else {
        fprintf(stderr, "Missing parameters\n");
        print_help();
    }

    return 0;
}