/*
* 学生类：
（1）有姓名（char *name）、分数1（float g1）、分数2（float g2）等数据成员。
（2）有带三个参数（char*,float,float）的构造函数，拷贝构造函数、析构函数。三者执行时要求分别输出字符串"construct"+name、"copy"+name、""destruct"+name。
（3）有返回两个分数、对象地址的三个公有成员函数；不允许有其它成员函数。取对象地址应利用this指针。
main函数：
（1）定义学生对象a，信息是"li" 90.0 80.0。
（2）定义大小为2的学生对象数组st，设置学生信息为：
"zhang" 80.0 70.0
"wang" 90.0 80.0
（3）输出数组中每个学生的平均值：75 85
（4）用a拷贝构造另一个学生对象b，拷贝时将信息修改为："liu" 80.0 70.0。注意"liu"比"li"多了个字符'u'，所以是通过追加字符实现修改，而80.0、70.0又比90.0、80.0都少10.0。
（5）取b地址，并调用b的返回对象地址成员函数，输出两者的差：0
总结：
程序无键盘输入，屏幕输出为（注意次序）：
construct li
construct zhang
construct wang
75 85
destruct wang
destruct zhang
copy liu
0
destruct liu
destruct li
提示：
（1）换行符为endl
（2）对象数组初始化：A a[]={A(...),A(...)}; 或者A *a=new A[2]{A(...),A(...)};
（3）若要在main结束前而不是结束时提前释放对象数组，可以静态定义局部对象数组，或者动态定义对象数组，并主动释放。
*/

#include <iostream>
#include <cstring>
class Student{

public:
  char * name;
  float g1;
  float g2;

  Student(const char* get_name, float get_g1,float get_g2){
    this->name = new char[strlen(get_name)+1];
    strcpy(this->name, (char*)get_name);
    this->g1 = get_g1;
    this->g2 = get_g2;
    std::cout << "construct " << get_name << std::endl;
    return;
  }

  Student(const Student& copy){
    this->name = new char[strlen(copy.name)+2];
    strcpy(this->name, copy.name);
    this->g1 = copy.g1 - 10.0;
    this->g2 = copy.g2 - 10;
    strncat(name, "u", 1);
    std::cout << "copy " << this->name << std::endl;
    return;
  }

  ~Student(){
    std::cout << "destruct " << this->name << std::endl;
    delete[] this->name;
    return;
  }
  
  float get_score1(){
    return this->g1;
  }

  float get_score2(){
    return this->g2;
  }

  Student* get_address(){
    return this;
  }
};


int main(){
  Student a("li", 90.0, 80.0);
  Student* st = new Student[2]{Student("zhang", 80.0, 70.0), Student("wang", 90.0, 80.0)};
  std::cout << (st[0].get_score1() + st[0].get_score2())/2 << ' ';
  std::cout << (st[1].get_score1() + st[1].get_score2())/2 << std::endl;
  delete[] st; 
  Student b = a;
  std::cout << &b - b.get_address() << std::endl;
  return 0 ;
}
