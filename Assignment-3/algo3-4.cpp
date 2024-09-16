#include <iostream>
#include <vector>

using namespace std;


class Solution{
/*
 * max \sum_{i=1}^n c_i x_i
 *
 * \sum_{i=1}^n a_i x_i \le b
 * x_i \in \Z^*, 1 \le i \le n
 *
 */ 
public:
  static int optimizeSolve(vector<int>&x, vector<int> &c, vector<int>& a, int b ){
    int dimension = x.size(); 
    vector<vector<int>> dp(dimension + 1, vector<int>(b + 1, 0));

    for(int i = 1; i <= dimension; i++){
      for(int j = 1; j <= b; j++){
        if(a[i-1] > j)
          dp[i][j] = dp[i - 1][j];
        else{
          dp[i][j] = max(dp[i-1][j], dp[i][j-a[i-1]]+c[i-1]);
          if(dp[i-1][j] < dp[i][j-a[i-1]]+c[i-1]) x[i-1]++;
        }
      }
    }
    return dp[dimension][b];
  }
};

int main(void){
  int n, b;
  cin >> n >> b;

  vector<int> x(n), c(n), a(n);
  for(int i=0; i<n; i++)
    x[i] = 0;
  for(int i=0; i<n; i++)
    cin >> c[i];
  
  for(int i=0; i<n; i++)
    cin >> a[i];

  int optimizeSolve = Solution::optimizeSolve(x, c, a, b);
 
  cout << optimizeSolve << endl;
  for(auto x_i: x)
    cout << x_i << ' ';

  cout << endl << "OptimizeSolve = " << optimizeSolve << endl; 

  return 0;
}



