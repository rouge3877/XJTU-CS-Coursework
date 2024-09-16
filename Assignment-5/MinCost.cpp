#include <iostream>
#include <vector>
#include <algorithm>

void  backtrack(std::vector<std::vector<int>> c, int n, int index,  std::vector<int>& choise){
  static int min_cost = 0x7fffffff;
  static int now_cost = 0;

  if(index >= n-1){
    if(now_cost < min_cost)
      min_cost = now_cost;
    
    return;
  }
    

  for(int i = index; i < n; i++){
    std::swap(choise[i], choise[index]);
    if(now_cost<min_cost){
      now_cost+=c[i][choise[i]];
      backtrack(c,n,index+1,choise);
      now_cost-=c[i][choise[i]];
    }
    std::swap(choise[i], choise[index]);
  }
  return;
}

int main(){
  int n;
  std::cin >> n;
  std::vector<std::vector<int>> cost(n, std::vector<int>(n));
  for(int i = 0; i< n; i++)
    for(int j = 0;j<n;j++)
      std::cin >> cost[i][j];

  std::vector<int> choise(n,0);
  for(int i = 0; i<n;i++)
    choise[i] = i;
    
  backtrack(cost, n, 0, choise);


  return 0;
}
