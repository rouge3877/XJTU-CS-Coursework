#include <iostream>
#include <vector>
#include <queue>
#include <climits>
#include <algorithm>

using namespace std;

struct Node
{
  int level;
  vector<int> path;
  int reducedCost;
  int cost;
};

struct CompareNode
{
  bool operator()(Node const &n1, Node const &n2)
  {
    return n1.cost > n2.cost;
  }
};

int firstMin(vector<vector<int>> &cost, int i)
{
  int min = INT_MAX;
  for (int k = 0; k < cost.size(); k++)
    if (cost[i][k] < min && i != k)
      min = cost[i][k];
  return min;
}

void solveTSP(vector<vector<int>> &cost)
{
  priority_queue<Node, vector<Node>, CompareNode> pq;
  vector<int> bestp;
  int bestc = INT_MAX;

  vector<int> initialPath;
  initialPath.push_back(0);

  Node root = {0, initialPath, 0, 0};
  root.cost = firstMin(cost, 0);

  pq.push(root);

  while (!pq.empty())
  {
    Node min = pq.top();
    pq.pop();

    int last = min.path[min.path.size() - 1];

    if (min.level == cost.size() - 2)
    {
      for (int i = 0; i < cost.size(); i++)
      {
        if (find(min.path.begin(), min.path.end(), i) == min.path.end())
        {
          int currentCost = min.reducedCost + cost[last][i] + cost[i][0];
          if (currentCost < bestc)
          {
            bestc = currentCost;
            bestp = min.path;
            bestp.push_back(i);
            bestp.push_back(0);
          }
          break;
        }
      }
    }
    else
    {

      for (int i = 0; i < cost.size(); i++)
      {
        if (find(min.path.begin(), min.path.end(), i) == min.path.end())
        {
          Node child = {min.level + 1, vector<int>(min.path), min.reducedCost + cost[last][i], 0};
          child.path.push_back(i);
          child.cost = child.reducedCost + firstMin(cost, i);
          if (child.cost < bestc)
          {
            pq.push(child);
          }
        }
      }
    }
  }

  cout << "Best Cost: " << bestc << endl;
  cout << "Best Path: ";
  for (int i : bestp)
  {
    cout << i << " ";
  }
  cout << endl;
}

int main()
{
  vector<vector<int>> cost = {
      {INT_MAX, 30, 6, 4},
      {30, INT_MAX, 5, 10},
      {6, 5, INT_MAX, 20},
      {4, 10, 20, INT_MAX}};

  solveTSP(cost);
  return 0;
}
