# 实验7：二叉排序树与平衡二叉树的实现

## 题目描述

分别采用二叉链表和顺序表作存储结构，实现对二叉排序树与平衡二叉树的操作

## 解题思路

模板题，参考所学知识分别涉及二叉搜索树和AVL平衡二叉树

## 大致的算法

![BSTadnAVL](.\BSTadnAVL.png)

```makefile
main_list: main.c BSTreeList.c BSTreeList.h
	gcc -DUSE_LIST -o main_list main.c BSTreeList.c

main_node: main.c BSTreeNode.c BSTreeNode.h
	gcc -o main_node main.c BSTreeNode.c

main_avl: AVLTree.c
	gcc AVLTree.c -o main_avl
```

### 二叉搜索树

1. **插入节点（InsertBST函数）**：
   - 如果树为空，创建一个新节点。
   - 如果节点已存在，增加其计数。
   - 否则，根据键值大小递归地插入到左子树或右子树中。
2. **创建二叉排序树（CreateBST函数）**：
   - 遍历数据数组，通过调用 `InsertBST` 函数插入节点，从而构建二叉排序树。
3. **中序遍历（InOrderTraverse函数）**：
   - 通过递归，按中序遍历方式输出树中的节点值，即左子树、根节点、右子树。
4. **计算平均查找长度（AverageSearchPath函数）**：
   - 通过递归遍历树的节点，累加每个节点的深度，最后除以节点总数得到平均查找长度。
5. **删除节点（DeleteNode函数）**：
   - 根据键值递归地查找要删除的节点。
   - 如果找到，根据左右子树的情况删除节点。
     - 如果有两个子树，用左子树的最大值覆盖要删除的节点，然后递归删除左子树的最大节点。
     - 如果只有一个子树或没有子树，直接删除节点。
6. **查找键值（FindKey函数）**：
   - 通过递归查找树中是否存在给定键值。

### AVL平衡树

AVL树（Adelson-Velsky and Landis树）的实现，它是一种自平衡二叉搜索树。AVL树确保了树的左右子树的高度差不超过1，通过旋转操作来维护平衡。

以下是代码的主要部分和关键函数：

1. **AVL树节点定义：**

```c
typedef struct node {
    int _val;
    struct node *_lchild;
    struct node *_rchild;
    int _height;
} avlnode, *avl;
```

每个节点包含一个值、左右子节点指针和节点高度。

2. **LL_rotation和RR_rotation：**

```c
avl LL_rotation(avl root);
avl RR_rotation(avl root);
```

分别执行左子树的左旋和右子树的右旋，用于调整失衡的节点。

3. **insertNode：**

```c
avl insertNode(avl root, int val);
```

插入节点并通过旋转操作保持AVL树的平衡。

4. **AverageSearchPath：**

```c
double AverageSearchPath(avl T, int n);
```

计算AVL树的平均查找路径长度。

5. **_AverageSearchPath：**

```c
double _AverageSearchPath(avl T, int level);
```

递归计算每个节点的查找路径长度。

6. **getData：**

```c
int getData(int **data, FILE *input_file);
```

从输入文件或标准输入中获取数据，存储在数组中。

7. **layerOrderPut：**

```C
void layerOrderPut(avl root);
```

层序遍历输出AVL树的节点值。

8. **main函数：**处理命令行参数，调用相应的函数，并输出结果。

**解决思路和算法核心：**

- 插入节点时，通过递归保持AVL树的平衡，检查并执行旋转操作。
- 计算平均查找路径长度时，使用递归遍历树，计算每个节点的深度，并最终计算平均深度。

**实现：**

- 使用C语言实现，通过结构体和指针来表示AVL树节点。
- 通过LL和RR旋转操作来维护树的平衡。

## 输入输出

### 对输入输出的处理

基本运行逻辑与之前的代码类似，运行可执行程序来测试这个AVL树的实现，例如：

```bash
./main_avl input.txt output.txt
```

其中，`input.txt` 包含要插入的数据，`output.txt` 用于输出结果。

### 输入输出样例

#### 输入输出样例1

```bash
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/BSTandAVLTree$ make main_avl 
gcc AVLTree.c -o main_avl
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/BSTandAVLTree$ ./main_avl 
-------------QUESTION 1-------------
Please input array with enter as END: 
12 23 43 1 4 225 123 988 73 

-------------QUESTION 2-------------
Average Search Path: 3.000000

----------------END.----------------
```

#### 输入输出样例2

```bash
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/BSTandAVLTree$ make main_node 
gcc -o main_node main.c BSTreeNode.c
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/BSTandAVLTree$ ./main_node 
-------------QUESTION 1-------------
Please input array with enter as END: 
12 34 23 4 9 8 7 6 44 10 93 2 


-------------QUESTION 2-------------
InOrder Traverse: 
2 4 6 7 8 9 10 12 23 34 44 93 

-------------QUESTION 3-------------
Average Search Path3.333333

*
Enter the key that you what to delete: 
2
*

-------------QUESTION 4-------------
The key you choose to delete is 2.
After delete 2, Inorder Traverse: 
4 6 7 8 9 10 12 23 34 44 93 

----------------END.----------------
```

#### 输入输出样例3

```bash
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/BSTandAVLTree$ make main_list 
gcc -DUSE_LIST -o main_list main.c BSTreeList.c
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/BSTandAVLTree$ ./main_list 
-------------QUESTION 1-------------
Please input array with enter as END: 
9 8 71367 5613 83 74 7198 2387 789 7 89 67 56 45 78 687 578 756


-------------QUESTION 2-------------
InOrder Traverse: 
7 8 9 45 56 67 74 78 83 89 578 687 756 789 2387 5613 7198 71367 

-------------QUESTION 3-------------
Average Search Path5.277778

*
Enter the key that you what to delete: 
9
*

-------------QUESTION 4-------------
The key you choose to delete is 9.
After delete 9, Inorder Traverse: 
7 8 45 56 67 74 78 83 89 578 687 756 789 2387 5613 7198 71367 

----------------END.----------------
```

## 总结

### 1. **BST（Binary Search Tree）**

**时间复杂度：**

- **插入操作：** $O(\log ⁡n)$ - 在平均情况下，插入节点的时间复杂度是对数级别，取决于树的高度。
- **查找操作：** $O(\log ⁡n)$  - 平均情况下，查找节点的时间复杂度是对数级别。
- **删除操作：**  $O(\log ⁡n)$  - 平均情况下，删除节点的时间复杂度是对数级别。

**空间复杂度：**

-  $O(⁡n)$  - 每个节点需要存储值和两个指针（左子节点和右子节点）。

###  **AVL树：**

**时间复杂度：**

- **插入操作：**  $O(\log ⁡n)$  - 由于AVL树的自平衡性质，插入时需要进行旋转操作，但旋转操作是常数时间的。
- **查找操作：**  $O(\log ⁡n)$  - 平均情况下，查找节点的时间复杂度是对数级别。
- **删除操作：**  $O(\log ⁡n)$ - 删除操作也可能触发旋转，但是旋转操作是常数时间的。

**空间复杂度：**

-  $O(⁡n)$  - 每个节点需要存储值和额外的平衡信息（高度等）。

---------------------------------

