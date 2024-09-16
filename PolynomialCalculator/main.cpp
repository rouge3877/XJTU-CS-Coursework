#include "Polynomial.h"
#include <cstring>
#include <iostream>
#include <unistd.h>

char *getAbsolutePath(const char *filename)
{
    char buf[1024];
    getcwd(buf, sizeof(buf));
    char *path = new char[1024];
    strcpy(path, buf);
    strcat(path, "/");
    strcat(path, filename);
    return path;
}

int main(int argc, char const *argv[]) // 输入后跟的参数分别表示两个多项式的存储位置（当前文件夹下）
{

    const char *poly1_name = argv[1];
    char *path1 = getAbsolutePath(poly1_name);
    const char *poly2_name = argv[2];
    char *path2 = getAbsolutePath(poly2_name);
    const char *polyout_name = argv[3];
    FILE *file_out = NULL;//如果第三个参数是stdout，则直接输出在命令行
    if (strcmp(polyout_name, "stdout") == 0)
        file_out = stdout;
    else {
        char *pathout = getAbsolutePath(polyout_name);
        file_out = fopen(pathout, "w");
        if (!file_out) {
            fprintf(stderr, "Unable to open file.\n");
            exit(1);
        }
    }

    Polynomial p1, p2;
    p1.readFromFile(path1);
    p2.readFromFile(path2);

    fprintf(file_out, "p1 = ");
    p1.outputPoly(file_out);
    fprintf(file_out, "p2 = ");
    p2.outputPoly(file_out);

    Polynomial *p3 = Polynomial::addPoly(p1, p2);
    fprintf(file_out, "p3 = p1 + p2 = ");
    p3->outputPoly(file_out);

    Polynomial *p4 = Polynomial::subPoly(p1, p2);
    fprintf(file_out, "p4 = p1 - p2 = ");
    p4->outputPoly(file_out);

    fprintf(file_out, "p1(2) = %lf\n", p1.calcPoly(2));

    delete p3;
    delete p4;
    delete[] path1;
    delete[] path2;

    return 0;
}