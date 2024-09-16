/* 3.2 实验： 研究C++的对象模型 */

// 1、定义一个类，其中有静态数据成员、各种类型非静态数据成员（含字符指针），甚至包括引用（可选），
//     静态和非静态成员函数（含分配空间的构造函数、析构函数）。
// 2、定义全局对象、main函数中局部对象、另一个被main调用的外部函数func中定义局部对象（可以是形参）、
//     main函数中动态创建对象，每种对象至少2个。观察、分析各种对象地址。
// 3、输出对象中各个静态与非静态数据成员的值、地址、对象的存储空间大小等信息。由此理解对象的本质、
//     静态数据成员是本类对象共享一份拷贝等问题。此外，应观察对齐现象。
// 4、（可选）输出对象的每个字节，以揭示引用的实现方法。
// 5、对于上述各种对象，输出静态、非静态成员函数地址，以及main、func等外部函数的地址，并分析。
//     要求采用合理方法，避免编译器提出警告。

#include <iostream>
#include <cstring>

class MyClass
{
public:
    static int staticData;
    int integerData;
    double doubleData;
    char *charPtrData;
    std::string stringData;
    int &refData;

public:
    // Constructor with dynamic memory allocation
    MyClass(int intValue, double doubleValue, const char *charValue, const std::string &stringValue, int &ref)
        : integerData(intValue), doubleData(doubleValue), stringData(stringValue), refData(ref)
    {
        charPtrData = new char[strlen(charValue) + 1];
        strcpy(charPtrData, charValue);
        std::cout << "    "
                  << "    "
                  << "++++++ Construct " << charPtrData << " is created ++++++" << std::endl;
    }

    MyClass(const MyClass &obj)
        : integerData(obj.integerData), doubleData(obj.doubleData), stringData(obj.stringData), refData(obj.refData)
    {
        charPtrData = new char[strlen(obj.charPtrData) + 1];
        strcpy(charPtrData, obj.charPtrData);
        std::cout << "    "
                  << "    "
                  << "++++++ Copy Construct " << charPtrData << " is created ++++++" << std::endl;
    }

    // Destructor
    ~MyClass()
    {
        std::cout << "    "
                  << "    "
                  << "++++++ Destruct " << charPtrData << " is deleted ++++++" << std::endl;
        delete[] charPtrData;
    }

    // Static member function
    static void staticFunction()
    {
        std::cout << "Static function called" << std::endl;
    }

    // Non-static member function
    void nonStaticFunction()
    {
        std::cout << "Non-static function called" << std::endl;
    }

    void printData()
    {

        std::cout << "  "
                  << "------ Sec#1:  Data of object ------" << std::endl;

        std::cout << "    "
                  << "in Object: " << this << std::endl;
        std::cout << "    "
                  << "Integer data: " << integerData << std::endl;
        std::cout << "    "
                  << "Double data: " << doubleData << std::endl;
        std::cout << "    "
                  << "Char pointer data: " << charPtrData << std::endl;
        std::cout << "    "
                  << "String data: " << stringData << std::endl;
    }

    void printDataAddress()
    {
        std::cout << "  "
                  << "------ Sec#2: Address of data ------" << std::endl;

        std::cout << "    "
                  << "in Object: " << this << std::endl;
        std::cout << "    "
                  << "Integer data: " << &integerData << std::endl;
        std::cout << "    "
                  << "Double data: " << &doubleData << std::endl;
        std::cout << "    "
                  << "Char pointer data: " << reinterpret_cast<void *>(charPtrData) << std::endl;
        std::cout << "    "
                  << "String data: " << &stringData << std::endl;
    }
};

// Initializing static data member
int MyClass::staticData = -1010;

// Global objects
MyClass globalObj1(1, 2.3, "Global 1", "Object", MyClass::staticData);
MyClass globalObj2(2, 3.7, "Global 2", "Object", MyClass::staticData);

// External function
void func(MyClass obj)
{
    obj.printData();
    obj.printDataAddress();
}

int main()
{
    std::cout << "\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ MAIN FUNCTION BEGIN: $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
              << std::endl;

    std::cout << "\n---------------------- Para#0:  Initialization ---------------------" << std::endl;
    // Local objects in main()
    MyClass localObj1(3, 4.9, "Local  1", "Object", MyClass::staticData);
    MyClass localObj2(4, 5.1, "Local  2", "Object", MyClass::staticData);
    // Dynamic objects in main()
    MyClass *dynamicObj1 = new MyClass(5, 6.3, "Dynamic1", "Object", MyClass::staticData);
    MyClass *dynamicObj2 = new MyClass(6, 7.2, "Dynamic2", "Object", MyClass::staticData);
    std::cout << "--------------------------------END---------------------------------\n"
              << std::endl;

    // Calling external function func()
    std::cout << "\n------------------ Para#1:  Inside External func() -----------------" << std::endl;
    std::cout << "    "
              << "Call external func(): " << &func << "  with object: " << &localObj1 << std::endl;
    func(localObj1);
    std::cout << "--------------------------------END---------------------------------\n"
              << std::endl;

    std::cout << "\n------------------ Para#2:     Inside     main() -------------------" << std::endl;
    std::cout << "    "
              << "Global  object 1 address: " << &globalObj1 << std::endl;
    std::cout << "    "
              << "Global  object 2 address: " << &globalObj2 << std::endl;
    std::cout << "    "
              << "Local   object 1 address: " << &localObj1 << std::endl;
    std::cout << "    "
              << "Local   object 2 address: " << &localObj2 << std::endl;
    std::cout << "    "
              << "Dynamic object 1 address: " << dynamicObj1 << std::endl;
    std::cout << "    "
              << "Dynamic object 2 address: " << dynamicObj2 << std::endl;

    std::cout << "    "
              << "Size of MyClass: " << sizeof(MyClass) << " bytes" << std::endl;
    std::cout << "-------------------------------END----------------------------------\n"
              << std::endl;

    std::cout << "\n------------------ Para#3: Details of  globalObj1 ------------------" << std::endl;
    globalObj1.printData();
    globalObj1.printDataAddress();
    // print function address
    void (MyClass::*pmf)() = &MyClass::nonStaticFunction;
    unsigned *p0 = (unsigned *)&pmf;
    std::cout << "    "
              << "nonStaticFunction address: " << std::hex << std::noshowbase << *p0 << std::endl;
    // print static function address
    void (*pf)() = &MyClass::staticFunction;
    unsigned *p1 = (unsigned *)&pf;
    std::cout << "    "
              << "staticFunction address: " << std::hex << std::noshowbase << *p1 << std::endl;
    std::cout << "-------------------------------END----------------------------------\n"
              << std::endl;

    std::cout << "\n------------------ Para#4:  Details of  localObj1 ------------------" << std::endl;
    localObj1.printData();
    localObj1.printDataAddress();
    // print function address
    void (MyClass::*pmf1)() = &MyClass::nonStaticFunction;
    unsigned *p2 = (unsigned *)&pmf1;
    std::cout << "    "
              << "nonStaticFunction address: " << std::hex << std::noshowbase << *p2 << std::endl;
    // print static function address
    void (*pf1)() = &MyClass::staticFunction;
    unsigned *p3 = (unsigned *)&pf1;
    std::cout << "    "
              << "staticFunction address: " << std::hex << std::noshowbase << *p3 << std::endl;
    std::cout << "-------------------------------END----------------------------------\n"
              << std::endl;

    std::cout << "\n------------------ Para#5: Details of dynamicObj1 ------------------" << std::endl;
    dynamicObj1->printData();
    dynamicObj1->printDataAddress();
    // print function address
    void (MyClass::*pmf2)() = &MyClass::nonStaticFunction;
    unsigned *p4 = (unsigned *)&pmf2;
    std::cout << "    "
              << "nonStaticFunction address: " << std::hex << std::noshowbase << *p4 << std::endl;
    // print static function address
    void (*pf2)() = &MyClass::staticFunction;
    unsigned *p5 = (unsigned *)&pf2;
    std::cout << "    "
              << "staticFunction address: " << std::hex << std::noshowbase << *p5 << std::endl;
    std::cout << "-------------------------------END----------------------------------\n"
              << std::endl;

    // Freeing dynamic objects
    delete dynamicObj1;
    delete dynamicObj2;

    std::cout << "\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ MAIN FUNCTION END $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n"
              << std::endl;

    return 0;
}
