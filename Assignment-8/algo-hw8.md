# 算法第八章作业

| 姓名   | 学号       | 班级       |
| ------ | ---------- | ---------- |
| 李雨轩 | 2204112913 | 计算机2205 |

### 问题描述

给定整数集合 $S$，判定 $S$ 是否可以划分为两个子集 $A$ 和 $\bar{A}(=S-A)$，使得 $\sum\limits_{x\in A}x = \sum\limits_{x\in \bar{A}}x$。证明该问题是$\textbf{NP}$完全问题。

### 解答

记该划分问题为问题 $Q$ ，先证明 $Q$ 问题为NP问题，再证明由`SUBSET-SUM`问题能够在多项式时间内归约到 $Q$ 问题。

#### 证明 $Q$ 问题为NP问题

显然，对于给定的两个子集 $A$ 和 $\bar{A}(=S-A)$，能够通过一次遍历，在 $O(n)$ 的时间复杂度内验证其正确性。因此 $Q$ 问题为NP问题。

#### 证明`SUBSET-SUM`问题 $\propto_p$ $Q$ 问题

> 对于`SUBSET-SUM`问题，其描述是：给定整数集合 $S$ 和一个整数 $t$ ，判定是否存在 $S$ 的一个子集 $S’\sube S$ ，使得 $S’$ 中整数的和为 $t$

直观上来讲，可以看出问题 $Q$ 是一个相较于`SUBSET-SUM`问题更“大”的问题。

首先构建多项式时间内对于输入输出的转换。设`SUBSET-SUM`问题的输入为一个集合 $S = \{s_1, s_2, \cdots, s_n\}$ 以及一个目标整数 $t$ 。

现在令 $d_1 = 2\sum_{x\in S}x$ ， $d_2 = \sum_{x\in S}x + 2t$ ，使问题 $Q$ 的输入为集合 $S^r = \{s_1, s_2, \cdots, s_n, d_1, d_2\}$ 。显然对于集合总和的计算能够在多项式时间内得到，因此构建了一个多项式时间内对于输入的转换。对于输出由于都是判定问题，则令`SUBSET-SUM`问题的输出为`false`时问题 $Q$ 的输出也为`false`，`SUBSET-SUM`问题的输出为`true`时问题 $Q$ 的输出也为`ture`。

接下来证明规约的正确性。当输入 $S^r$ 是一个对于问题 $Q$ 输出`true`的输入时，存在一个集合划分 $A$ 和 $\bar A$ ，使得 $\sum\limits_{x\in A}x = \sum\limits_{x\in \bar{A}}x = 2\cdot \sum_{x\in S}x + t$ 。显然 $d_1, d_2$ 分别属于 $A$ 和 $\bar A$ 。不妨设 $d_1\in A$ ，则令 $S' = A$ ，有
$$
\sum_{x\in A}x + d_1  =\sum_{x\in \bar A}x + d_2\\
\sum_{x\in A}x + 2\sum_{x\in S}x = \sum_{x\in \bar A}x +  \sum_{x\in S}x + 2t\\
\sum_{x\in A}x = 2t
$$
因此 $\sum_{x\in A}x = t$ ，即 $A$ 和 $\bar A$ 是问题 $Q$ 的输出为`ture`的输入。

同理可证明当输入 $S, t$ 是一个对于`SUBSET-SUM`问题输出`true`的输入时，其导出的输入也是问题 $Q$ 的输出`true`的输入。

因此`SUBSET-SUM`问题 $\propto_p$ $Q$ 问题。

**综上，由于 $Q$ 问题为NP问题且有`SUBSET-SUM`问题 $\propto_p$ $Q$ 问题，因此 $Q$ 问题时一个NP完全问题。**



