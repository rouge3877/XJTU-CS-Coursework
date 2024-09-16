#include "BSTreeNode.h"

// 插入节点
void InsertBST(BSTree *T, DataType x)
{
    if (*T == NULL) {
        *T = (BSTree)malloc(sizeof(BSTNode));
        (*T)->_data = x;
        (*T)->_count = 1;
        (*T)->_lchild = (*T)->_rchild = NULL;
    } else if (x == (*T)->_data) {
        (*T)->_count++;
    } else if (x < (*T)->_data) {
        InsertBST(&((*T)->_lchild), x);
    } else {
        InsertBST(&((*T)->_rchild), x);
    }
}

// 创建二叉排序树
void CreateBST(BSTree *T, DataType *data, int n)
{
    *T = NULL;
    int i;
    for (i = 0; i < n; i++) {
        InsertBST(T, data[i]);
    }
}

// 中序遍历
void InOrderTraverse(BSTree T, FILE *output_way)
{
    if (T != NULL) {
        InOrderTraverse(T->_lchild, output_way);
        fprintf(output_way, "%d ", T->_data);
        InOrderTraverse(T->_rchild, output_way);
    }
}

// 计算查找长度
double _AverageSearchPath(BSTree T, int level)
{
    if (T == NULL)
        return 0;
    double sum = 0;
    sum += level;
    sum += _AverageSearchPath(T->_lchild, level + 1);
    sum += _AverageSearchPath(T->_rchild, level + 1);
    return sum;
}

// 计算平均查找长度
double AverageSearchPath(BSTree T, int n)
{
    return _AverageSearchPath(T, 1) / n;
}

// 删除节点
void DeleteNode(BSTree *T, DataType x, bool *delete_success)
{
    if (*T == NULL) {
        printf("No %d", x);
        *delete_success = 0;
        return;
    } else if (x < (*T)->_data) {
        DeleteNode(&(*T)->_lchild, x, delete_success);
    } else if (x > (*T)->_data) {
        DeleteNode(&(*T)->_rchild, x, delete_success);
    } else { // 找到该节点
        // 如果左右子树都不为空
        if ((*T)->_lchild && (*T)->_rchild) {
            BSTree tmp = (*T)->_lchild;
            while (tmp->_rchild) {
                tmp = tmp->_rchild; // 找到左子树的最右节点，即左子树的最大值
            }
            (*T)->_data = tmp->_data;                               // 用该值覆盖要删除的节点
            DeleteNode(&(*T)->_lchild, tmp->_data, delete_success); // 在左子树中删除该节点
        } else {                                                    // 左右子树至少有一个为空
            BSTree tmp = *T;
            if ((*T)->_lchild == NULL) { // 没有左子树
                *T = (*T)->_rchild;
            } else if ((*T)->_rchild == NULL) { // 没有右子树
                *T = (*T)->_lchild;
            }
            free(tmp);
        }
    }
}

bool FindKey(BSTree T, DataType key){
    if (T == NULL) {
        return false;
    } else if (key == T->_data) {
        return true;
    } else if (key < T->_data) {
        return FindKey(T->_lchild, key);
    } else {
        return FindKey(T->_rchild, key);
    }
}