#ifndef _BSTREE_LIST_H
#define _BSTREE_LIST_H

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define MAX_CAPACITY 1024
#define EMPTY -1

typedef int DataType;

typedef struct BST {
    DataType *_data;
    int _size;
    int _capacity;
} *BSTree;

void CreateBST(BSTree *T, DataType *data, int n);                // 创建二叉排序树
void InOrderTraverse(BSTree T, FILE *output);                    // 中序遍历二叉排序树
double AverageSearchPath(BSTree T, int size);                    // 计算平均查找长度
void DeleteNode(BSTree *T, DataType key, bool *delete_success); // 删除包含x的节点
bool FindKey(BSTree T, DataType key);                            // 查找key

#endif //_BSTREE_LIST_H