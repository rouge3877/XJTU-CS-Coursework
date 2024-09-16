/*
 * 先创建一个数组，数组长度由键盘输入确定，数组类型为指向int的指针。
 * 然后动态创建一组int类型变量，使得数组每个元素指向一个变量，并通过键盘输入每个变量的值。
 * 最后输出这些变量的和。
 * 例如：
 * 输入 3 7 3 -1 //第1个数为数组大小
 * 输出 9
 * 提示：创建数组时需要先定义指向指针的指针变量；
 * 注意：谢绝使用静态数组，并且遵守防止使用野指针的有关措施。
 */
#include <iostream>

class ArraySum {
private:
    static void exchange(int &a, int &b) {
        int temp = a;
        a = b;
        b = temp;
    }

public:
    static int sum(int* array[], int size) {
        int sum = 0;
        for (int i = 0; i < size; ++i)
            sum += *array[i];
        return sum;
    }

    static void releaseMemory(int* array[], int size) {
        for (int i = 0; i < size; ++i) {
            delete array[i];
            array[i] = nullptr;
        }
        delete[] array;
        array = nullptr;
    }
};

int main() {
    int size;
    std::cin >> size;

    int** array = new int*[size];

    for (int i = 0; i < size; ++i) {
        int value;
        std::cin >> value;
        array[i] = new int(value);
    }

    int sum = ArraySum::sum(array, size);
    std::cout << sum << std::endl;

    ArraySum::releaseMemory(array, size);

    return 0;
}
