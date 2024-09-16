# 实验10：一元稀疏多项式计算器

## 题目描述

设计一个一元稀疏多项式简单计算器。要求这个一元稀疏多项式简单计算器的基本功能是：

​     (1)输入并建立多项式；

​     (2)输出多项式，输出形式为整数序列

​	n,c1,e1,c2,e2,…,cn,en,

​       其中n是多项式的项数，ci,ei分别是第i项的系数和指数，序列按指数降序排列；

​     (3)多项式a和b相加，建立多项式a+b；

​     (4)多项式a和b相减，建立多项式a-b；

​     (5)计算多项式在x处的值；即给定x值，计算多项式值。

## 解题思路

1. **定义多项式数据结构：** 创建一个数据结构，用于表示一元稀疏多项式。这个数据结构应该包括项数信息以及每一项的系数和指数。这可以是一个抽象的容器，例如列表、集合或链表。
2. **输入多项式：** 设计一个输入功能，允许用户输入多项式的信息。这可能包括项数，以及每一项的系数和指数。确保用户输入的信息能够被正确地映射到多项式的数据结构中。
3. **输出多项式：** 提供一个输出功能，将多项式的信息以规定的格式呈现给用户。通常，这包括将每一项按照指数降序排列，并以易于理解的形式展示。
4. **多项式运算：** 实现多项式的基本运算，如相加和相减。这涉及遍历多项式的项并执行相应的运算操作。确保处理好边界条件和运算规则。
5. **计算多项式值：** 提供功能，允许用户计算多项式在给定值（例如 x）处的结果。这涉及遍历多项式的项，并将每一项的值乘以对应的 x 次幂，最后求和得到结果。

## 大致的算法

代码实现了一个多项式类 `Polynomial`，使用链表来表示多项式的每一项。以下是对代码主要部分的分析：

1. **链表表示多项式：** `Node` 类包含了一个项的系数 `_coef`、指数 `_exp` 和指向下一个节点的指针 `_next`。`Polynomial` 类通过 `_head` 成员表示多项式的头节点，初始时有一个虚拟节点。这种设计方便了插入、删除和遍历操作。

```cpp
class Node {
public:
    int _coef;
    int _exp;
    Node *_next;

    Node(int coef, int exp, Node *next)
        : _coef(coef), _exp(exp), _next(next) {}
};

class Polynomial {
private:
    Node *_head;

public:
    Polynomial() : _head(new Node(0, 0, nullptr)) {}
    ~Polynomial();
    // ...
};
```

2. **插入项操作：** `insertTerm` 方法用于按照指数降序的方式插入项。如果插入的项与已有项具有相同的指数，则合并这两项，如果合并后的系数为零，则删除该项。

```cpp
void Polynomial::insertTerm(int coef, int exp) {
    if (coef == 0)
        return;

    Node *p = _head;
    while (p->_next != nullptr && p->_next->_exp > exp) {
        p = p->_next;
    }

    if (p->_next != nullptr && p->_next->_exp == exp) {
        // 合并相同指数的项
        p->_next->_coef += coef;
        if (p->_next->_coef == 0) {
            // 如果系数为零，删除该项
            Node *q = p->_next;
            p->_next = q->_next;
            delete q;
            _head->_coef--;
        }
    } else {
        // 插入新项
        p->_next = new Node(coef, exp, p->_next);
        _head->_coef++;
    }
}
```

3. **读取文件中的多项式：** `readFromFile` 方法通过解析文件中的字符串，将系数和指数插入到多项式中。

```cpp
void Polynomial::readFromFile(const char *filename) {
    // ...
}
```

4. **输出多项式：** `outputPoly` 方法将多项式按照指定格式输出到文件。

```cpp
void Polynomial::outputPoly(FILE *outputFile) {
    // ...
}
```

5. **多项式相加和相减：** `addPoly` 和 `subPoly` 方法实现了多项式相加和相减，合并同指数项并计算结果。

```cpp
Polynomial *Polynomial::addPoly(Polynomial &poly1, Polynomial &poly2) {
    // ...
}

Polynomial *Polynomial::subPoly(Polynomial &poly1, Polynomial &poly2) {
    // ...
}
```

6. **计算多项式值：** `calcPoly` 方法通过遍历多项式的节点，计算多项式在给定 x 处的值。

```cpp
double Polynomial::calcPoly(double x) {
    // ...
}
```

整体来说，这个实现为多项式提供了基本的插入、删除、计算以及文件读写的功能。链表的使用使得对多项式的操作更加高效，同时对于大多数基本操作都进行了清晰的处理。

## 输入输出

### 对输入输出的处理

对文件中多项式信息的规定和处理：

```latex
3x^2 - 5x + 2
```

在文件中，这个多项式会被表示为：

```markdown
3*x^2 - 5*x + 2
```

具体的规定如下：

- 空格被用作分隔符，用于分隔每一项。
- 系数和变量（x）之间不能有空格。
- 指数用 `^` 符号表示，紧跟在变量 `x` 的后面。
- 多项式中的每一项用加法或减法符号连接。

在代码中，`readFromFile` 方法解析了文件中的每一行，通过遍历字符来识别并提取系数和指数。它处理了正负号、乘号、变量 `x`，以及可能存在的指数。这样，通过符合规定格式的文件，代码就可以正确地读取多项式的信息。

```cpp
void Polynomial::readFromFile(const char *filename)
{
    FILE *file = fopen(filename, "r");

    if (!file) {
        fprintf(stderr, "Unable to open file.\n");
        exit(1);
    }

    char line[1024];
    while (fgets(line, sizeof(line), file)) {
        char *p = line;
        int sign = 1;
        while (*p) {
            // ...
        }
    }

    fclose(file);
}
```

### 输入输出样例

```yaml
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/PolynomialCalculator$ make PolynomialCalculator
g++ -o PolynomialCalculator main.cpp Implementation.cpp
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/PolynomialCalculator$ cat poly1.input
19*x^3-9*x^2+0*x-9
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/PolynomialCalculator$ cat poly2.input
23*x^3-12*x^1+9-x^12
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/PolynomialCalculator$ ./PolynomialCalculator poly1.input poly2.input poly.output
rouqi@ROUGE-LAPTOP-LEGION:~/Cpp-repo/XJTUDS-Labs/PolynomialCalculator$ cat poly.output
p1 = 3,19,3,-9,2,-9,0
p2 = 4,-1,12,23,3,-12,1,9,0
p3 = p1 + p2 = 4,-1,12,42,3,-9,2,-12,1
p4 = p1 - p2 = 5,1,12,-4,3,-9,2,12,1,-18,0
p1(2) = 107.000000
```

## 总结

### 时间复杂度分析：

1. **insertTerm 方法：** 最坏情况下，需要遍历链表找到合适的插入位置，因此时间复杂度为$O(n)$，其中 n 是多项式的项数。
2. **readFromFile 方法：** 外层循环遍历文件的每一行，内层循环遍历每一行的字符，因此时间复杂度是 $O(m * k)$，其中 m 是文件的行数，k 是文件中最长的一行的字符数。
3. **outputPoly 方法：** 遍历链表输出每一项的信息，时间复杂度为 $O(n)$，其中 n 是多项式的项数。
4. **addPoly 和 subPoly 方法：** 遍历两个多项式的链表，时间复杂度为 $O(max(n, m))$，其中 n 和 m 分别是两个多项式的项数。
5. **calcPoly 方法：** 遍历多项式的链表，时间复杂度为 $O(n)$，其中 n 是多项式的项数。

### 空间复杂度分析：

1. **insertTerm 方法：** 除了常数个变量外，主要的空间消耗在新节点的分配，因此空间复杂度是$ O(1)$。
2. **readFromFile 方法：** 除了常数个变量外，主要的空间消耗在新节点的分配，因此空间复杂度是$ O(1)$。
3. **outputPoly 方法：** 除了常数个变量外，主要的空间消耗在输出结果所需的空间，因此空间复杂度是 $O(1)$。
4. **addPoly 和 subPoly 方法：** 除了常数个变量外，主要的空间消耗在新节点的分配，因此空间复杂度是 $O(1)$。
5. **calcPoly 方法：** 除了常数个变量外，主要的空间消耗在 `calcExp` 方法中，因此空间复杂度是$ O(1)$。

### 可能的改进空间：

1. **文件读取方式：** 当文件内容较大时，逐行读取可能会导致效率较低。可以考虑使用更高效的文件读取方式，比如一次性读取整个文件或者缓存一定量的字符。
2. **插入操作：** 可以考虑使用双向链表，以便在链表中间插入元素时，能够更快地找到插入位置。
3. **多项式相加和相减：** 在 `addPoly` 和 `subPoly` 方法中，每次插入项都要遍历链表。如果链表是按照指数降序排列的，可以优化插入逻辑，减少遍历次数。
4. **文件输入输出错误处理：** 在文件读取错误时，应该有更友好的错误处理方式，而不是直接退出程序。
5. **内存管理：** 当频繁插入和删除节点时，可能会导致内存碎片。可以考虑使用对象池或其他内存管理策略以优化内存使用。