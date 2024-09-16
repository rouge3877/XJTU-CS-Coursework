# 实验5：约瑟夫环问题仿真

## 题目描述

设编号为1，2，…，n(n>0)个人按顺时针方向围坐一圈，每人持有一个正整数密码。开始时任意给出一个报数上限m，从第一个人开始顺时针方向自1起顺序报数，报到m时停止报数，报m的人出列，将他的密码作为新的m值，从他在顺时针方向上的下一个人起重新自1报数；如此下去直到所有人全部出列为止。要求设计一个程序模拟此过程，给出出列人的编号序列

## 解题思路

**模拟**了一个环形报数的过程，通过删除节点模拟淘汰的效果，最终输出报数路径

## 大致的算法

### **结构体定义**：

```c
typedef struct node {
    int _key;
    int _id;
    struct node *_next;
} node, *ptr_node;
```

- 定义了一个结构体 `node`，包含 `_key`（键值）、`_id`（标识符）、`_next`（指向下一个节点的指针）。
- 定义了结构体指针 `ptr_node`，用于表示指向 `node` 结构体的指针。

### **初始化环形链表函数 initRing**：

```c
node *initRing(int *key_list, int length)
{
    if (length > 1) {
        // 创建链表，并使最后一个节点指向第一个节点，形成环
        // ...
        return begin_node;
    } else if (length == 1) {
        // 创建一个只包含一个节点的环
        // ...
        return ret_node;
    } else {
        fprintf(stderr, "no key list no ring\n");
        return NULL;
    }
}
```

- 如果键值列表长度大于1，创建包含多个节点的环形链表。
- 如果长度为1，创建一个只包含一个节点的环。
- 如果长度为0，输出错误信息并返回空指针。

### **模拟报数函数 simulate**：

```c
void simulate(node *first_node, int upper, ptr_node *path, int ret_index)
{
    if (first_node->_next == first_node) {
        // 如果链表只有一个节点，直接记录该节点
        path[ret_index] = first_node;
        return;
    }
    // 从第一个节点开始，每次找到第 upper - 1 个节点，删除下一个节点，继续模拟报数
    // ...
}
```

- 如果链表只有一个节点，直接记录该节点。
- 从第一个节点开始，每次找到第 `upper - 1` 个节点，将下一个节点记录在路径数组中，然后删除该节点，继续模拟报数过程。

### **主函数 main**：

- 通过命令行参数或用户输入获取输入文件、输出文件、以及第一个报数的限制值。
- 调用 `getData` 函数读取输入文件中的键值列表。
- 调用 `initRing` 函数初始化环形链表。
- 调用 `simulate` 函数模拟报数过程，将报数路径记录在 `path` 数组中。
- 调用 `printPath` 函数将报数路径输出到文件或标准输出。

## 输入输出

### 对输入输出的处理

1. **文件输入输出处理**：
   - `getData` 函数：
     - 从输入文件或标准输入中读取数据，返回数据的数量。
     - 如果文件为标准输入 (`stdin`)，则通过 `scanf` 读取数字，直到遇到换行符为止。
     - 如果文件非标准输入，通过 `fscanf` 从文件中读取数字，同样遇到换行符或文件结束则停止。
   - `getAbsolutePath` 函数：
     - 获取文件的绝对路径，使用 `getcwd` 获取当前工作目录，然后通过字符串拼接生成文件的绝对路径。
   - `printPath` 函数：
     - 将报数路径输出到文件或标准输出，使用 `fprintf` 函数。
   - `main` 函数：
     - 通过命令行参数判断输入和输出的来源，并打开相应的文件流。
     - 如果命令行参数为 1，表示没有提供输入文件，将输入流设置为标准输入；如果命令行参数为 4，表示提供了输入文件和输出文件。
     - 使用 `getData` 读取输入数据，初始化环形链表，进行报数模拟，然后将结果输出到文件或标准输出。
2. **标准输入输出处理**：
   - 对于标准输入 (`stdin`)，程序会通过 `printf` 和 `scanf` 进行输入输出。
   - 对于文件输入输出，程序通过文件流和文件 I/O 函数（`fopen`, `fclose`, `fprintf`, `fscanf`）进行读写操作。
3. **错误处理**：
   - 在打开文件时，程序会检查文件是否成功打开，如果打开失败，会输出错误信息并退出程序。
4. **用户交互**：
   - 如果未提供命令行参数或提供了 `--help` 参数，程序会打印使用帮助信息。

### 输入输出样例

#### 输入样例1

```bash
./JosephRing data.input output.txt 20
```

其中`data.input`的内容是：

```bash
1 8 4 3 5 2
```

#### 输出样例1

```bash
The 1 gays OUT is id=2 and key=8
The 2 gays OUT is id=5 and key=5
The 3 gays OUT is id=6 and key=2
The 4 gays OUT is id=3 and key=4
The 5 gays OUT is id=1 and key=1
The 6 gays OUT is id=4 and key=3
```



#### 输入样例2

```bash
./JosephRing --help
```

#### 输出样例2

```bash
Usage: main [input_filename] [output_filename] [key]
Reads data from input_filename and writes the result to output_filename.
[key] is the integer as *The first reporting limit*.
If all arguments are omitted, the program reads from standard input and writes to standard output.
```



## 总结

### 时间复杂度分析：

1. `initRing` 函数：遍历输入数组创建环形链表，时间复杂度为 **O(n)**，其中 **n** 是数组的长度。
2. `simulate` 函数：

- 在环形链表上进行报数模拟，每次删除一个节点，直到链表为空。
- 在最坏情况下，需要删除 **n** 个节点，其中 **n** 是数组的长度。
- 每个节点的删除操作的时间复杂度是 **O(1)**。
- 因此，`simulate` 函数的总体时间复杂度为 **O(n)**。

3. `getData` 函数：

- 在标准输入或文件中读取数据，时间复杂度取决于输入数据的数量。
- 最坏情况下，需要读取 **n** 个数据，其中 **n** 是数组的长度。
- 每次读取一个数据的时间复杂度是 **O(1)**。
- 因此，`getData` 函数的总体时间复杂度为 **O(n)**。

### 空间复杂度分析：

- `initRing` 函数创建了一个环形链表，需要的额外空间为 **O(n)**。
- `simulate` 函数使用了递归，递归深度最大为数组的长度，因此递归栈的空间复杂度为 **O(n)**。
- `getData` 函数需要存储输入数据的数组，占用 **O(n)** 的额外空间。
- 其他变量和数据结构占用的空间是常量级别的。
- 因此，总体空间复杂度为 **O(n)**。


----------------

