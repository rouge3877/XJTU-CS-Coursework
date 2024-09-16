#include "count.h"

// 统计文件中各个字符以及其出现的次数, 返回的是一个数组，数组的下标为字符的ASCII码，数组的值为字符出现的次数，如果出现为零则不体现在数组中
CharInfo *CountChar(FILE *fp, int *length,int *text_ch_num)
{
    *length = 0;
    int diff_char_num = 0;
    CharInfo *char_list = (CharInfo *)malloc(sizeof(CharInfo) * MAX_CHAR);
    for (int i = 0; i < MAX_CHAR; i++) {
        char_list[i]._char = i;
        char_list[i]._frequency = 0;
    }
    ORIGINAL_DATA_TYPE ch;
    while ((ch = fgetc(fp)) != EOF) {
        if(char_list[ch]._frequency == 0)
            diff_char_num++;
        
        (*length)++;
        char_list[ch]._frequency++;
    }

    if (*length == 0) {
        fprintf(stderr, "Input File is empty\n");
        exit(0);
    }

    CharInfo *ret_list = (CharInfo *)malloc(sizeof(CharInfo) * diff_char_num);
    int index = 0;
    for (int i = 0; i < MAX_CHAR; i++) {
        if (char_list[i]._frequency != 0) {
            ret_list[index]._char = char_list[i]._char;
            ret_list[index]._frequency = char_list[i]._frequency;
            index++;
        }
    }
    
    free(char_list);
    *text_ch_num = *length;
    *length = diff_char_num;
    return ret_list;
}
