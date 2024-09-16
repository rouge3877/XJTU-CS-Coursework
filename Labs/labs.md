# Moodle Labs

## Divide and Conquer: Weighted Median

For $n$ **distinct** ordered elements $x_1, x_2, \cdots, x_n$ with positive weights $w_1, w_2, \cdots, w_n$ such that $\sum\limits_{i=1}^n w_i = 1$, the weighted median is the element $x_k$ satisfying:

$$
\sum\limits_{i=1}^{k-1} w_i \le \cfrac12\\

\sum\limits_{i=k+1}^{n} w_i \le \cfrac12
$$

The Question is that Using at most $O(n)$'s time in the worst case, to **Find the Weighted Median** in an unordered array which length is $n$.

## Dynamic Programming: Cut Steel Bar

设有一个长度为 $L$ 的钢条, 在钢条上标有 $n$ 个位置点 ($p_1,p_2,\cdots,p_n$) . 现在需要按
钢条上标注的位置将钢条切割为 $n+1$ 段, 假定每次切割所需要的代价与所切割的钢条长度成正比. 
请编写一个算法, 能够确定一个切割方案, 使切割的总代价最小。
