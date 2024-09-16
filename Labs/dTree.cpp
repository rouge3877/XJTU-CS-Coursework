#include <iostream>
#include <fstream>
#include <string>
#include <cmath>
#include <vector>
#include <algorithm>
using namespace std;
// 算法要求：设计一个算法求 T 的最小顶点集合 S，使 T/S 为一个 d 森林。

class dTree
{
private:
    int _numNodes, _threshold, _answer;
    vector<vector<pair<int, int>>> _tree; 
    vector<bool> _state;
    const int INF = 1e9; // 用于表示无穷大

public:
    dTree(int nodes, int threshold) : _numNodes(nodes), _threshold(threshold), _answer(0)
    {
        _tree.resize(_numNodes);
        _state.resize(_numNodes, false);
        for (int i = 0; i < _numNodes; i++)
        {
            int branches;
            cin >> branches;
            while (branches--)
            {
                int node, w;
                cin >> node >> w;
                _tree[i].emplace_back(make_pair(node, w));
            }
        }
    }

    int dfs(int node)
    {
        int result = 0;
        for (auto it = _tree[node].begin(); it != _tree[node].end(); ++it)
        {
            int neighbor = it->first;
            int weight = it->second;
            int distance = dfs(neighbor);
            if (!_state[node])
                distance = max(distance + weight, 0);
            if (distance > _threshold && !_state[node])
            {
                _answer++;
                _state[node] = true;
                continue;
            }
            result = max(result, distance);
        }
        if (_state[node])
            return -INF; 
        else
            return result;
    }

    void solution()
    {
        dfs(0); // 从根节点开始
        cout << _answer << endl;
    }
};

int main()
{
    int n, d; // n为顶点个数，d为路径长度
    cin >> n >> d;
    dTree dt(n, d); // 构建与初始化树
    dt.solution();  // 通过solution函数输出结果
    return 0;
}
