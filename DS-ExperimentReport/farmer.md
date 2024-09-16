# 实验2：农夫过河问题的求解

## 题目描述

一个农夫带着一只狼、一只羊和一棵白菜，身处河的南岸。他要把这些东西全部运到北岸。他面前只有一条小船，船只能容下他和一件物品，另外只有农夫才能撑船。如果农夫在场，则狼不能吃羊，羊不能吃白菜，否则狼会吃羊，羊会吃白菜，所以农夫不能留下羊和白菜自己离开，也不能留下狼和羊自己离开，而狼不吃白菜。请求出农夫将所有的东西运过河的方案。

## 解题思想

本题主要通过深度优先搜索（DFS）算法来穷举所有可能的过河策略，并使用剪枝优化算法来减少搜索空间。

1. **状态表示：**

   河边问题中，每个状态可以表示为一个4位的二进制数，其中每一位对应一个物体（农夫、狼、羊、白菜），0表示在南岸，1表示在北岸。例如，状态 `0b1010` 表示农夫和羊在北岸，狼和白菜在南岸。

2. **DFS遍历：**

   通过DFS遍历所有可能的状态，从初始状态 `0b0000` 出发，目标是达到状态 `0b1111`，即所有物体都在北岸。

3. **剪枝优化：**

   剪枝的思想在于排除掉一些明显无解的情况，以减小搜索空间，提高效率。在这个问题中，使用了两种剪枝策略：

   ​	a. **剪枝策略1 - judgeExcess 函数：**- 该函数用于判断在某个状态下是否存在明显的冲突，使得该状态不可能是解。- 对于每一对物体，如果它们在河边相邻，且它们的目标状态存在冲突，就认为这个状态不可能是解，进行剪枝。

   ​	b. **剪枝策略2 - DFS 函数中的 visited 数组：**- 使用一个 `visited` 数组记录已经访问过的状态，如果某个状态已经被访问过，就不再对其进行DFS，减少重复搜索。

4. **路径输出：**

   通过 `printPath` 函数，回溯输出找到的路径，其中 `binnumToStatus` 函数用于将二进制状态转换为人类可读的状态。

5. **输出所有解：**

   每找到一条可行的过河策略，就输出一次，最终输出所有可能的过河策略。

## 大致的算法

在这个问题中，每个状态可以用一个4位二进制数表示，分别代表农夫、狼、羊、白菜的位置，0表示在河的一岸，1表示在河的对岸。例如，初始状态为`0000`，表示所有东西都在河的一岸。

以下是算法的实现步骤：

### 数据结构定义

1. `GraphAdjMat` 结构体和 `Graph` 指针：表示图的邻接矩阵，其中 `vertices` 数组存储顶点，`adjMat` 存储边的连接关系，`size` 记录图的大小。
2.  `Queue` 结构体：用于实现队列数据结构，支持入队、出队等操作。

### 算法实现

1. 创建图（`Graph`）：使用邻接矩阵表示图，其中每个节点表示一个状态，每个状态之间的边表示可以通过一步操作从一个状态转移到另一个状态。
2. 深度优先搜索：使用DFS算法，从初始状态开始，递归地尝试所有可能的操作序列，直到找到一条到达目标状态的路径。
3. 递归过程中，使用剪枝策略防止搜索无效路径。
   1. 使用 `judgeExcess` 函数判断是否有潜在的吃食问题，如果有，剪掉该分支。
   2. 在 DFS 递归中，记录已经访问的状态，避免重复访问。
4. 过 `judgeExcess` 函数对搜索空间进行剪枝，避免搜索到不符合条件的状态。

## 输入输出

### 对输入输出的处理

对输入输出的处理与实验1中类似：

#### 输入处理

1. **命令行参数（argc、argv）：**
   * 如果命令行参数个数为1，则输出到标准输出(stdout)。
   * 如果命令行参数个数为2，且第一个参数不是"--help"，则将输出重定向到指定文件。
2. **创建图（Graph）：**
   * 使用 `GraphAdjMat` 结构体表示图，通过邻接矩阵 `adjMat` 存储节点之间的连接关系。
   * 通过 `addVertex` 和 `addEdge` 函数添加顶点和边。

#### 输出处理

1. **DFS输出策略：**
   * 在找到到达目标状态的路径时，输出策略。每条路径的输出包含一系列河边状态的描述。
   * 每个状态的描述使用 `binnumToStatus` 函数将二进制数转化为描述字符串，表示农夫、狼、羊、白菜在南岸或北岸的状态。
2. **文件输出：**
   * 通过 `FILE *output` 控制输出，如果输出文件没有成功打开，则在标准错误流中输出错误信息。

### 输入输出样例

#### 输入样例1

样例 1：标准输出

```bash
./FarmerCrossingRiver 
```

* 输出：将河边问题的解答输出到标准输出。

#### 输出样例1

```yaml
# stdout
The farmer's strategy for crossing the river 1: 
*/Each line represents the status but not the Handling process/*
--------Strategy 1 begin--------
    Farmer in the South bank, Wolf in the South bank, Goat in the South bank, Cabbage in the South bank,  (0000)
--> Farmer in the North bank, Wolf in the South bank, Goat in the North bank, Cabbage in the South bank,  (1010)
--> Farmer in the South bank, Wolf in the South bank, Goat in the North bank, Cabbage in the South bank,  (0010)
--> Farmer in the North bank, Wolf in the South bank, Goat in the North bank, Cabbage in the North bank,  (1011)
--> Farmer in the South bank, Wolf in the South bank, Goat in the South bank, Cabbage in the North bank,  (0001)
--> Farmer in the North bank, Wolf in the North bank, Goat in the South bank, Cabbage in the North bank,  (1101)
--> Farmer in the South bank, Wolf in the North bank, Goat in the South bank, Cabbage in the North bank,  (0101)
--> Farmer in the North bank, Wolf in the North bank, Goat in the North bank, Cabbage in the North bank,  (1111)
--------Strategy 1 end--------

The farmer's strategy for crossing the river 2: 
*/Each line represents the status but not the Handling process/*
--------Strategy 2 begin--------
    Farmer in the South bank, Wolf in the South bank, Goat in the South bank, Cabbage in the South bank,  (0000)
--> Farmer in the North bank, Wolf in the South bank, Goat in the North bank, Cabbage in the South bank,  (1010)
--> Farmer in the South bank, Wolf in the South bank, Goat in the North bank, Cabbage in the South bank,  (0010)
--> Farmer in the North bank, Wolf in the North bank, Goat in the North bank, Cabbage in the South bank,  (1110)
--> Farmer in the South bank, Wolf in the North bank, Goat in the South bank, Cabbage in the South bank,  (0100)
--> Farmer in the North bank, Wolf in the North bank, Goat in the South bank, Cabbage in the North bank,  (1101)
--> Farmer in the South bank, Wolf in the North bank, Goat in the South bank, Cabbage in the North bank,  (0101)
--> Farmer in the North bank, Wolf in the North bank, Goat in the North bank, Cabbage in the North bank,  (1111)
--------Strategy 2 end--------
```

#### 输入样例2

样例 2：输出至文件

```bash
./FarmerCrossingRiver ouput.txt
```

* 输出：将河边问题的解答输出到`output.txt`

#### 输出样例2

略，与输出样例1一致

#### 输入样例3

```bash
./FarmerCrossingRiver --help
```

#### 输出样例3

```bash
Usage: ./FarmerCrossingRiver [output_filename]
```

## 总结

### 时间复杂度

1. **`DFS` 函数：**对于每个节点，进行深度优先搜索。每个节点最多访问一次，因此时间复杂度为 $O(V + E)$，其中 V 是顶点数，E 是边数。
2. **`addVertex `和 `addEdge `函数：**对于每个节点和每条边，都进行了常数时间的操作。时间复杂度为 $O(V + E)$，其中 V 是顶点数，E 是边数。
3. **`BFS `函数：**对于每个节点，进行广度优先搜索。每个节点最多访问一次，因此时间复杂度为$ O(V + E)$，其中 V 是顶点数，E 是边数。
4. **整体时间复杂度：**主函数中调用 DFS 函数，因此时间复杂度为$ O(V + E)$。

### 空间复杂度

1. **`GraphAdjMat `结构体：**存储了顶点和邻接矩阵，占用空间为 $O(V^2)$，其中 V 是顶点数。
2. **`Queue `结构体：**存储了队列，占用空间为$ O(MAX_QUEUE_SIZE)$。
3. **`visited `数组：**占用了$ O(V) $的空间，其中 V 是顶点数。
4. **`path `数组：**占用了 $O(V)$ 的空间，其中 V 是顶点数。
5. **其他局部变量：**占用了常数空间。
6. **整体空间复杂度：**主要占用空间的是 `GraphAdjMat `结构体，因此整体空间复杂度为$ O(V^2)$。

### 可改进的地方

1. **图的表示方式：**当图稀疏时，邻接矩阵的存储方式可能浪费空间。可以考虑使用邻接表等更节省空间的表示方式。
2. **DFS 访问顺序：**在 DFS 函数中，可以通过改变节点的访问顺序，优化搜索速度。例如，将相邻节点按某种规则排序，以提高效率。
3. **Queue 大小：**如果图较大，可能需要动态调整队列的大小而不是固定使用 `MAX_QUEUE_SIZE`。

-----------------------------

