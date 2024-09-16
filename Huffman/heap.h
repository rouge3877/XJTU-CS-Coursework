#ifndef _HEAP_H_
#define _HEAP_H_

#include "node.h"
#include <stdio.h> //for stderr in pushHeap and popHeap

#define HEAP_DATA_TYPE HuffmanNode *

// 最小堆结构体
typedef struct Heap {
    HEAP_DATA_TYPE *_heap; // 存储堆元素的指针数组
    int _size;             // 堆的当前大小
    int _capacity;         // 堆的最大容量
} MinHeap, *pMinHeap;

// 创建最小堆
pMinHeap initMinHeap(int capacity);

// 销毁最小堆
void destroyMinHeap(pMinHeap minHeap);

// 添加元素到堆
void pushHeap(pMinHeap minHeap, HEAP_DATA_TYPE value);

// 弹出堆顶元素
HEAP_DATA_TYPE popHeap(pMinHeap minHeap);

#endif