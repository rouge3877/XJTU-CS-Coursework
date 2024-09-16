#ifndef _NODE_H_
#define _NODE_H_

#include "count.h"
// 定义比较宏，用于比较两个元素的大小
#define COMPARE(a, b) ((a)->_data._frequency < (b)->_data._frequency)

typedef struct Node {
    CharInfo _data;
    struct Node *_left, *_right;
    struct Node *_parents;
} HuffmanNode, *pHuffmanNode, *Huffman;

#endif