#ifndef _COUNT_H_
#define _COUNT_H_

#include <stdio.h>
#include <stdlib.h>

// 定义原始编码数据类型
#define ORIGINAL_DATA_TYPE char
// 定义原始编码的数据类型的最大值
#define MAX_CHAR 256

typedef struct Info {
    ORIGINAL_DATA_TYPE _char;
    int _frequency;
} CharInfo;

// 统计文件中各个字符以及其出现的次数
CharInfo *CountChar(FILE *fp, int* length, int *text_ch_num);

#endif