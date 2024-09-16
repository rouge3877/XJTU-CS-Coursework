/*
 * 定义一个函数，参数为三个int类型变量的引用。在函数中交换三个参数的值，
 * 使其按升序排序。然后在主函数中输入三个整型数，调用该函数，按升序输出这三个数。

 * 例如：
 * 输入： 3 4 -1
 * 输出： -1 3 4
*/
#include <iostream>

class TriOrder
{
private:
    static void exchange(int &a, int &b)
    {
        int temp = a;
        a = b;
        b = temp;
        return;
    }

    static int getmax(int &a, int &b, int &c)
    {
        int judge = a;
        if (judge < b)
            judge = b;
        if (judge < c)
            judge = c;
        return judge;
    }

public:
    static void ascd(int &a, int &b, int &c);
};

int main()
{
    int a, b, c;
    std::cin >> a >> b >> c;
    TriOrder::ascd(a, b, c);

    std::cout << a << " " << b << " " << c << std::endl;
    return 0;
}

void TriOrder::ascd(int &a, int &b, int &c)
{
    int temp = TriOrder::getmax(a, b, c);
    if (temp == a)
        TriOrder::exchange(a, c);
    else if (temp == b)
        TriOrder::exchange(b, c);

    if (a > b)
        TriOrder::exchange(a, b);
    return;
}