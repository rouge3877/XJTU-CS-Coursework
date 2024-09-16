#ifndef _BSTREE_NODE_H_
#define _BSTREE_NODE_H_

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
typedef int DataType;

typedef struct BSTNode {
    DataType _data;
    int _count; // 记录该节点被访问的次数
    struct BSTNode *_lchild, *_rchild;
} BSTNode, *BSTree;

void CreateBST(BSTree *T, int *data, int n);  // 创建二叉排序树
void InOrderTraverse(BSTree T, FILE *output); // 中序遍历二叉排序树
double AverageSearchPath(BSTree T, int n);    // 计算平均查找长度
void DeleteNode(BSTree *T, int x, bool *ret); // 删除包含x的节点
bool FindKey(BSTree T, DataType key);         // 查找key

#endif // _BSTREE_NODE_H_