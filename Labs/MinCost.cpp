#include <iostream>
#include <string>
#include <cmath>
#include <vector>
#include <algorithm>
using namespace std;

// 算法要求：请编写⼀个算法，能够确定⼀个切割方案，使切割的总代价最⼩。

// 函数原型：

void MinCost(int L, int n, int *p)
{
  sort(p + 1, p + n + 1);
  auto dp = new int *[n + 2];
  for (int i = 0; i < n + 2; i++)
  {
    dp[i] = new int[n + 2];
    for (int j = 0; j < n + 2; j++)
      dp[i][j] = 0x7fffffff;
  }

  for (int i = 0; i < n + 1; i++)
  {
    dp[i][i] =  dp[i][i + 1] = 0;
  }
  dp[n + 1][n + 1] = 0;

  for (int k = 1; k < n + 2; k++)
  {
    for (int i = 0; i + k < n + 2; i++)
    {
      int l = p[i + k] - p[i];
      for (int j = i + 1; j < i + k; j++)
        dp[i][i + k] = min((dp[i][j] + dp[j][i + k] + l), dp[i][i + k]);
    }
  }
  cout << dp[0][n + 1] << endl;
  return;
}

// 你的代码只需要补全上方函数来实现算法,可根据自己需要建立别的函数
// 其中L是钢条长度，n是位置点个数，p包含n 个切割点的位置（乱序）
// 只需要提交这几行代码，其他的都是后台系统自动完成的。类似于 LeetCode

int main()
{
  // 后台自动给出测试代码放在这里，无需同学编写
  int L, n;
  cin >> L >> n;
  int *p;
  p = new int[n + 2];
  p[0] = 0;
  p[n + 1] = L;
  for (int i = 1; i < n + 1; i++)
    cin >> p[i];

  MinCost(L, n, p); // 调用函数输出一个切割最小的代价和，结果通过cout输出，均为int类型

  return 0;
}
