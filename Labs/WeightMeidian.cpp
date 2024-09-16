#include <iostream>
#include <string>
#include <cmath>
#include <vector>
#include <algorithm>

using namespace std;

void showVector(vector<int> nums1, vector<double> nums2)
{
    if (nums1.size() == nums2.size())
    {
        cout << "nums:";
        for (int i = 0; i < nums1.size(); i++)
        {
            cout << " " << nums1[i];
        }
        cout << endl
             << "weights:";
        for (int i = 0; i < nums2.size(); i++)
        {
            cout << " " << nums2[i];
        }
        cout << endl;
    }
    else
    {
        cout << "Error vector length!!!!!!!!!!!!!!!!!" << endl;
    }
}

// 算法要求：请编写一段代码，能够在最坏情况下用 O(n)时间找出 n 个元素的带权中位数
// 函数原型：

void WeightMedian(int length, vector<int> num, vector<double> weight, int index)
{
    static double left_weight, right_weight;

    // -----------------DEBUG: OUPUT LOG------------------
    // cout << endl
    //      << "--------------------------------------------------" << endl;
    // cout << "#0 Print the input:"
    //      << "length = " << length << " index = " << index;

    // if (index != 0)
    //     cout << "; left_weight , right_weight(BEFORE) = " << left_weight << ", " << right_weight << endl;

    // cout << "Arrrays Before: \n";
    // showVector(num, weight);
    // cout << endl;
    // -----------------DEBUG: OUPUT LOG------------------

    if (length == 1)
    {
        cout << num[0] << endl;
        return;
    }
    else if (index == 0)
    {
        left_weight = 0;
        right_weight = 1;
        WeightMedian(length, num, weight, length);
    }
    else
    {
        // O(n): get mid number of this array;
        int sub_length = (length - 1) >> 1; // length / 2, And if length is Even: length / 2 = (length - 1) / 2

        vector<int> temp_num = num;
        nth_element(temp_num.begin(), temp_num.begin() + sub_length, temp_num.end());
        int midnum_value = temp_num[sub_length];

        int index = 0;
        while (num[index] != midnum_value)
            index++;
        double midnum_weight = weight[index];
        // ----------------------------------DEBUG: OUPUT LOG-----------------------------------
        // cout << "\n#1: After get mid number and its value: \n"
        //      << "Sub_length = " << sub_length << " and the num[sublength]'s value in num is " << midnum_value << endl
        //      << " and the midnum_weight is " << midnum_weight << endl;
        // ----------------------------------DEBUG: OUPUT LOG-----------------------------------

        // O(n):
        double less_weights = 0, greater_weight = 0;
        vector<int> less_nums = {}, greater_nums = {};
        vector<double> less_nums_weight = {}, greater_nums_weight = {};

        for (int i = 0; i < length; i++)
        {
            if (num[i] < midnum_value)
            {
                less_nums.push_back(num[i]);
                less_nums_weight.push_back(weight[i]);
                less_weights += weight[i];
            }
            else if (num[i] > midnum_value)
            {
                greater_nums.push_back(num[i]);
                greater_nums_weight.push_back(weight[i]);
                greater_weight += weight[i];
            }
        }

        // ----------------------------------DEBUG: OUPUT LOG-----------------------------------
        // cout << "\n#2: After split the array into two parts and calculate the sub_sum_weights: \n"
        //      << "less_weights = " << less_weights << " and greater_weight = " << greater_weight << endl;
        // cout << "---less_nums:---\n";
        // showVector(less_nums, less_nums_weight);
        // cout << "\n---greater_nums:---\n";
        // showVector(greater_nums, greater_nums_weight);
        // ----------------------------------DEBUG: OUPUT LOG-----------------------------------

        // update new weight in sub_length!
        if (right_weight > 0.5)
        {
            right_weight = right_weight - less_weights - midnum_weight;
            left_weight = 1 - right_weight - midnum_weight;
        }
        else if (left_weight > 0.5)
        {
            left_weight = left_weight - greater_weight - midnum_weight;
            right_weight = 1 - left_weight - midnum_weight;
        }

        // ----------------------------------DEBUG: OUPUT LOG-----------------------------------
        // cout << "\n#3: After update the left_weight and right_weight: \n"
        //      << "left_weight = " << left_weight << " and right_weight = " << right_weight << endl;

        // cout << "Nums and Weights: \n";
        // showVector(num, weight);
        // ----------------------------------DEBUG: OUPUT LOG-----------------------------------

        // choose a direction
        if (right_weight > 0.5)
        {
            // greater_nums.insert(greater_nums.begin(), num[sub_length]);
            // greater_nums_weight.insert(greater_nums_weight.begin(), weight[sub_length]);
            WeightMedian(length - sub_length - 1, greater_nums, greater_nums_weight, 1);
        }
        else if (left_weight > 0.5)
        {
            // less_nums.push_back(num[sub_length]);
            // less_nums_weight.push_back(weight[sub_length]);
            WeightMedian(sub_length, less_nums, less_nums_weight, 1);
        }
        else // left_weight <= 0.5 && right_weight <= 0.5
            cout << midnum_value << endl;
    }

    return;
}

// 你的代码只需要补全上方函数来实现算法
// 其中length为输入长度，num是包含n个互不相同元素值的向量，weight是包含元素值对应的权重的向量，index为递归调用时的索引(下标)
// 只需要提交这几行代码，其他的都是后台系统自动完成的。类似于 LeetCode

int main()
{

    // 后台自动给出测试代码放在这里，无需同学编写

    // 测试代码将测试用例的三行数据分别导入length，num，和weight中

    // 调用WeightMedian(length,num, weight,index)函数，函数内部使用cout输出得到的中位数，测试代码默认index初始值为0
    vector<int> num;
    vector<double> weight;

    int length;
    cin >> length; // Read the number of elements
    num.resize(length);
    weight.resize(length);

    for (int i = 0; i < length; ++i)
        cin >> num[i]; // Read the numbers

    for (int i = 0; i < length; ++i)
        cin >> weight[i]; // Read the extra values

    WeightMedian(length, num, weight, 0);

    return 0;
}
