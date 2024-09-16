#ifdef USE_LIST
#include "BSTreeList.h"
#else
#include "BSTreeNode.h"
#endif

#define MAX_INPUT 1000

int getData(DataType **, FILE *);
void question1(BSTree *, DataType *, FILE *, FILE *);
void question2(BSTree, FILE *);
void question3(BSTree, int, FILE *);
void question4(BSTree, FILE *, DataType);
void print_help();
char *getAbsolutePath(const char *);

int main(int argc, char *argv[])
{

    BSTree T = NULL;
    int count = 0;

    if (argc == 2) {
        if (strcmp(argv[1], "--help") == 0)
            print_help();
        else {
            fprintf(stderr, "Missing parameters\n");
            print_help();
        }
    } else if (argc == 4) {
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

        DataType key = atof(argv[3]);

        if (output != stdout)
            fprintf(output, "ANSWER OF BST\n");

        question1(&T, &count, input, output);
        question2(T, output);
        question3(T, count, output);
        question4(T, output, key);
    } else if (argc == 1) {
        question1(&T, &count, stdin, stdout);
        question2(T, stdout);
        question3(T, count, stdout);
        fprintf(stdout, "\n*\nEnter the key that you what to delete: \n");
        DataType key;
        scanf("%d", &key);
        fprintf(stdout, "*\n");
        question4(T, stdout, key);
    } else {
        fprintf(stderr, "Missing parameters\n");
        print_help();
    }

    return 0;
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

void print_help()
{
    printf("Usage: main [input_filename] [output_filename] [key]\n");
    printf("Reads data from input_filename and writes the result without [key] to output_filename.\n");
    printf("[key] is the integer or double to be removed from the data.\n");
    printf("If all arguments are omitted, the program reads from standard input and writes to standard output.\n");
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

void question1(BSTree *T, int *count_ptr, FILE *input_file, FILE *output_file)
{
    fprintf(output_file, "-------------QUESTION 1-------------\n");
    DataType *data;
    *count_ptr = getData(&data, input_file); // 获得数列数据和数列长度
    if (output_file != stdout) {
        fprintf(output_file, "Input from the input file: ");
        for (int i = 0; i < *count_ptr; i++)
            fprintf(output_file, "%d ", data[i]);
    } else if (output_file == stdout && input_file != stdin) {
        fprintf(output_file, "Input from the input file: ");
        for (int i = 0; i < *count_ptr; i++)
            fprintf(output_file, "%d ", data[i]);
    }
    fprintf(output_file, "\n");
    CreateBST(T, data, *count_ptr);
    return;
}
void question2(BSTree T, FILE *output_file)
{
    fprintf(output_file, "\n");
    fprintf(output_file, "-------------QUESTION 2-------------\n");
    fprintf(output_file, "InOrder Traverse: \n");
    InOrderTraverse(T, output_file);
    fprintf(output_file, "\n");
    return;
}
void question3(BSTree T, int n, FILE *output_file)
{
    fprintf(output_file, "\n");
    fprintf(output_file, "-------------QUESTION 3-------------");
    fprintf(output_file, "\nAverage Search Path%lf\n", AverageSearchPath(T, n));
    return;
}
void question4(BSTree T, FILE *output_file, DataType key)
{
    fprintf(output_file, "\n");
    fprintf(output_file, "-------------QUESTION 4-------------\n");

    bool delete_re = 1;
    bool exist = FindKey(T, key);
    DeleteNode(&T, key, &delete_re);
    fprintf(output_file, "The key you choose to delete is %d.\n", key);
    if (exist) {
        fprintf(output_file, "After delete %d, Inorder Traverse: \n", key);
        InOrderTraverse(T, output_file);
        fprintf(output_file, "\n");
    } else {
        fprintf(output_file, "There is no key %d, so the Inorder Traverse has no change: \n", key);
        InOrderTraverse(T, output_file);
        fprintf(output_file, "\n");
    }
    fprintf(output_file, "\n----------------END.----------------\n");
    return;
}
