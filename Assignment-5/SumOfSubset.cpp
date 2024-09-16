#include <iostream>
#include <algorithm>
#include <vector>

void printPath(std::vector<int>&path){
  std::cout << "Path: ";
  for(auto i : path)
    std::cout << i << ' ';
  std::cout << std::endl;
}

void backtrack(std::vector<int> &set, int length, std::vector<int>& path, int target_sum, int index){
  static int sum = 0;
  if(index >= length){
    return;
  }
  if(sum == target_sum){
    printPath(path);
    return;
  }

  if(sum + set[index] <= target_sum){
    sum += set[index];
    path.push_back(set[index]);
    backtrack(set, length, path, target_sum, index+1);
    sum -= set[index];
    path.pop_back();
  }
  backtrack(set, length, path, target_sum, index+1);
 
  return ;
}


int main(){
  int set_length;
  std::cin >> set_length;
  std::vector<int> set(set_length, 0);
  for(int i = 0; i < set_length; i++)
    std::cin >> set[i];
  
  int target_sum;
  std::cin>>target_sum;

  std::vector<int> path = {};
  backtrack(set, set_length, path, target_sum, 0);

  return 0;
}
