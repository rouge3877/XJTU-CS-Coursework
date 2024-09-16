# 数据结构实验报告

| 姓名 | 李雨轩     |
| ---- | ---------- |
| 学号 | 2204112913 |
| 班级 | 计算机2205 |

# 实验1：背包问题的求解

## 题目描述

假设有一个能装入总体积为T的背包和n件体积分别为w1,w2,…wn的物品，能否从n件物品中挑选若干件恰好装满背包，即使w1+w2+…+wm=T，要求找出所有满足上述条件的解。例如：当T=10，各件物品的体积{1,8,4,3,5,2}时，可找到下列4组解：

​      (1,4,3,2)， (1,4,5)，  (8,2)，   (3,5,2)

## 解题思想

背包问题是一种经典的组合优化问题，在许多实际场景中都有应用，如资源分配、排班等。解决背包问题的方法有很多种，其中递归法是一种直观且易于理解的方式。

1. **构建二叉树表示选择过程：** 我们通过构建一个二叉树来表示在解空间中的选择过程。树的每个节点代表在决策过程中的一个阶段，其左子节点表示选择当前物品，右子节点表示不选择当前物品。根节点表示背包容量为0，叶子节点表示最终解。
2. **递归遍历解空间：** 通过递归方式遍历这个二叉树，从根节点开始，根据每个节点的选择，向左或向右移动。递归过程中，我们记录每个节点的选择总和和层级信息。
3. **输出符合条件的解：** 当递归到叶子节点时，检查选择总和是否等于目标背包容量T。如果等于，表示找到了一组满足条件的解，输出对应的物品组合。

通过这种递归的方式，我们穷举了所有可能的物品组合，找到了所有满足条件的解。这种解题思想虽然直观，但在实际应用中，随着物品数量的增加，其时间复杂度会呈指数级增长，因此需要进一步考虑性能优化的方法，如动态规划等。

**下面是进一步的解题思想：**

1. **选择树节点的创建：**

   在 `addNode` 函数中，对于每个父节点，创建了两个子节点，分别表示选择该物品和不选择该物品。这样的设计保证了树的每个节点都有两个分支，分别对应两种选择。

2. **递归遍历过程中的剪枝：**

   在`makeChooseTree`函数中，对每个节点进行了以下判断：

   * 如果左子节点的 `_choose_sum` 小于目标容量 `target`，则可以选择继续遍历左子树；
   * 如果左子节点的 `_choose_sum` 等于目标容量 `target`，则找到一组解，输出解，并终止对左子树的遍历。
   * 同样的判断逻辑也应用于右子节点。

   这种判断逻辑实现了剪枝的思想，当发现某个节点的 `_choose_sum` 已经大于目标容量时，就可以剪掉该节点及其子树，因为在该节点及其子树中不可能找到满足条件的解。

3. **剪枝过程的优化：**

   剪枝的优化体现在 `makeChooseTree` 函数中的判断逻辑，避免了对整个子树的遍历，提前终止了对某一方向的搜索。这样可以有效减少搜索空间，提高算法效率。

4. **路径记录：**

   在 `makeChooseTree` 函数中，通过 `path` 数组记录了当前路径，用于输出满足条件的解。这也是一种剪枝思路，通过路径的记录，可以在满足条件时输出解，而不必等到叶子节点。

## 大致的算法

### 数据结构定义

```c
typedef struct node {
    struct node *_lchild;
    struct node *_rchild;
    int _choose_sum;
    int _level;
} choose_tree_node, *ptr_node;
```

这部分定义了表示二叉树节点的结构体，包括左右子节点、选择总和和层级信息。通过这个结构体，构建了一个二叉树，用于解决背包问题。

### 二叉树的构建

```c
ptr_node createNode(int level);
void addNode(ptr_node parent_node, int level);
```

这两个函数用于创建节点和添加子节点。通过递归的方式，不断地创建和添加节点，构建了表示所有可能解的二叉树。

### 背包问题的求解

```c
void makeChooseTree(ptr_node root, int *list, int target, bool *path, int start, FILE *output, int *output_list);
```

这个函数通过递归地遍历二叉树，从根节点开始，根据每个节点的选择，向左或向右移动。当遍历到叶子节点时，检查选择总和是否等于目标背包容量T，如果等于，则输出对应的物品组合。

### 输入输出处理

```c
int getData(int **data, FILE *input_file);
char *getAbsolutePath(const char *filename);
void print_help();
```

这些函数处理输入输出，包括从文件或标准输入中读取数据，获取文件的绝对路径，以及输出帮助信息。

### 主函数

```c
int main(int argc, char const *argv[]);
```

主函数处理命令行参数，根据参数配置输入和输出流，获取背包容量T，并调用makeChooseTree函数解决背包问题。同时，提供了帮助信息，以及对输入参数的错误处理。

## 输入输出

### 对输入输出的处理

#### 输入信息

1. **命令行参数**：
   * 如果命令行参数为1个，程序将从标准输入读取数据，并将结果输出到标准输出。
   * 如果命令行参数为4个，前两个参数分别为输入文件和输出文件，第三个参数为背包容量，第四个参数为背包容量值。
   * 如果命令行参数为2个且第一个参数为"--help"，则打印帮助信息。
2. **输入文件格式**：
   * 如果指定了输入文件，该文件应包含一行整数，表示物品的体积。各个数字之间用空格或换行符分隔。
   * 如果没有指定输入文件，则程序会从标准输入中读取数据。

#### 输出信息

1. **输出文件格式**：
   * 输出文件中包含了所有满足背包容量条件的解。
   * 每个解以 "Solution X:" 开头，其中 X 表示解的编号。
   * 每个解的具体选择以 "take" 或 "do not take" 表示，后面跟着对应物品的体积。
2. **标准输出**：
   * 如果没有指定输出文件，结果将被输出到标准输出。

#### 代码中的关键输入输出处理函数

* `getData(int **data, FILE *input_file)`：从文件或标准输入中读取数据。
* `getAbsolutePath(const char *filename)`：获取文件的绝对路径。
* `print_help()`：输出帮助信息。
* `main(int argc, char const *argv[])`：处理命令行参数，配置输入和输出流，获取背包容量，调用解决背包问题的函数，并输出结果。

### 输入输出样例

#### 输入样例1

```bash
./main input.txt output.txt 10
```

其中`input.txt`文件中的内容是：

```shell
1 8 4 3 5 2
```

#### 输出样例1

```bash
PACKAGE PEOBLEM solution (Package volume: 10): 
Solution 1: take 1 ,do not take 8 ,take 4 ,take 3 ,do not take 5 ,take 2 ,
Solution 2: take 1 ,do not take 8 ,take 4 ,do not take 3 ,take 5 ,do not take 2 ,
Solution 3: do not take 1 ,take 8 ,do not take 4 ,do not take 3 ,do not take 5 ,take 2 ,
Solution 4: do not take 1 ,do not take 8 ,do not take 4 ,take 3 ,take 5 ,take 2 ,
```

#### 输入样例 2

```yaml
./main input.txt output.txt 15
```

其中，`input.txt` 文件内容如下：

```yaml
1 2 3 4 5 6 7 8
```

#### 输出样例 2

```yaml
PACKAGE PEOBLEM solution (Package volume: 15): 
Solution 1: take 1 ,take 2 ,take 3 ,take 4 ,take 5 ,do not take 6 ,
Solution 2: take 1 ,take 2 ,do not take 3 ,take 4 ,do not take 5 ,do not take 6 ,
Solution 3: take 1 ,take 2 ,do not take 3 ,do not take 4 ,take 5 ,do not take 6 ,
Solution 4: take 1 ,do not take 2 ,take 3 ,take 4 ,do not take 5 ,do not take 6 ,
Solution 5: take 1 ,do not take 2 ,take 3 ,do not take 4 ,take 5 ,take 6 ,
Solution 6: take 1 ,do not take 2 ,do not take 3 ,do not take 4 ,do not take 5 ,take 6 ,
Solution 7: do not take 1 ,take 2 ,take 3 ,take 4 ,do not take 5 ,take 6 ,
Solution 8: do not take 1 ,take 2 ,do not take 3 ,do not take 4 ,take 5 ,do not take 6 ,
Solution 9: do not take 1 ,take 2 ,do not take 3 ,do not take 4 ,do not take 5 ,take 6 ,
Solution 10: do not take 1 ,do not take 2 ,take 3 ,take 4 ,do not take 5 ,do not take 6 ,
Solution 11: do not take 1 ,do not take 2 ,take 3 ,do not take 4 ,take 5 ,do not take 6 ,
Solution 12: do not take 1 ,do not take 2 ,do not take 3 ,take 4 ,take 5 ,take 6 ,
Solution 13: do not take 1 ,do not take 2 ,do not take 3 ,do not take 4 ,do not take 5 ,do not take 6 ,
```

#### 输入样例 3

```yaml
./PackageProblem --help
```

#### 输出样例 3

```yaml
Usage: main [input_filename] [output_filename]
Reads data from input_filename and writes the result to output_filename.
If all arguments are omitted, the program reads from standard input and writes to standard output.
```

## 总结：分析时间空间复杂度，看看有没有改进的地方

### 时间复杂度分析：

1. `makeChooseTree` 函数：递归深度，在树的最坏情况下，每个节点都可能有两个子节点，递归深度为物品数量 n，因此最坏情况下时间复杂度为 $O(2^n)$。在每一步递归中，需要进行一定的比较和输出操作，这些操作的时间复杂度是常量级别，对总体复杂度的影响相对较小。
2. `getData` 函数：读取输入数据的时间复杂度为 $O(n)$，其中 n 为输入数据的数量。
3. `main` 函数：主要操作是调用 `makeChooseTree` 函数，因此主要的时间复杂度取决于 `makeChooseTree` 的时间复杂度，为 $O(2^n)$。

### 空间复杂度分析：

1. `makeChooseTree` 函数：递归调用会占用栈空间，最坏情况下栈的深度是物品数量 n，因此空间复杂度为 $O(n)$。除递归栈外，额外使用的空间主要是 path 数组，其长度为物品数量 n，因此额外的空间复杂度为 $O(n)$。
2. `getData` 函数：为存储输入数据动态分配了一个数组，其大小为物品数量 n，因此空间复杂度为 $O(n)$。
3. `main` 函数：除了调用 `makeChooseTree` 函数外，还分配了额外的空间用于存储路径信息和输入数据，因此额外的空间复杂度为$ O(n)$。

### 总结及改进的地方：

1. 该算法的时间复杂度受到物品数量的指数级增长的影响，因此在处理大规模数据时，性能可能不理想。
2. 空间复杂度主要受到递归栈和额外数组的影响，但总体上是较为合理的。
3. 改进的地方：可以考虑使用动态规划等更高效的算法来解决背包问题，以提高算法的效率。此外，递归深度的指数增长表明存在许多重复的子问题，可以通过记忆化搜索等方法进行优化。

---------------------------

