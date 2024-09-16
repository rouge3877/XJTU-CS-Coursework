#ifndef _ENCODE_H_
#define _ENCODE_H_

#include "hash.h"
#include "huffman.h"
#include <stdbool.h>
#include <string.h>
#include <unistd.h>

#define BUFFER_MAX_FILE_SIZE 1024*100
//bool read_buffer[BUFFER_MAX_FILE_SIZE * sizeof(ORIGINAL_DATA_TYPE) + 8] = {0};

// 哈夫曼编码结构
typedef struct Code {
    ORIGINAL_DATA_TYPE _data;
    int _length;
    bool *_code;
} HuffmanCode, *pHuffmanCode, *CodeKey2Value;

typedef struct decodeHuffmanTree {
    ORIGINAL_DATA_TYPE _data;
    struct decodeHuffmanTree *_left, *_right;
} DecodeHuffmanTree, *pDecodeHuffmanTree;

void Huffman_Compress(FILE *input, FILE *output);

void Huffman_Uncompress(FILE *input, FILE *output);

#endif