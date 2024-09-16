#include<iostream>
#include<vector>
using namespace std;

class Solution {
public:
    static int lengthOfLIS(vector<int>& nums) {
        if(nums.size() == 0) return 0;

        vector<int> sub_seq = {nums[0]};

        for (vector<int>::iterator pos = nums.begin() + 1; pos != nums.end();
             pos++) {
            if (*pos > sub_seq.back())
                sub_seq.push_back(*pos);
            else
                *(lower_bound(sub_seq.begin(), sub_seq.end(), *pos)) = *pos;
        }

        return sub_seq.size();
    }
};

int main(){
    int length;
    cin >> length;
    vector<int> array(length);
    for(int i=0;i<length;i++)
        cin >> array[i];

    cout << Solution::lengthOfLIS(array) << endl;

    return 0;
}
