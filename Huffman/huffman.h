#ifndef _HUFFMAN_H_
#define _HUFFMAN_H_

#include <stdio.h>
#include <stdlib.h>

#include "heap.h"
#include "node.h"

// 创建节点
pHuffmanNode createHuffmanNode(CharInfo element, int frequnecy);

// 销毁节点
void destroyHuffmanNode(pHuffmanNode node);

// 创建哈夫曼树
Huffman createHuffmanTree(CharInfo *char_list, int size);

// 销毁哈夫曼树
void destroyHuffmanTree(Huffman root);

// 非递归寻找最大深度
int findMaxDepth(Huffman root);

#endif
