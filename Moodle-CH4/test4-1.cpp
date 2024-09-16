#include <iostream>

class Base{
private:
  int x;

public:
  Base(int set = 0){
    x = set;
  }
  void show(void){
    std::cout << "x=" << x << std::endl;
    return;
  }
};

class derived: public Base{
private:
  int y;
public:
  derived(int _x, int _y):Base(_x){
    y = _y;
  }
  void show(void){
    Base::show();
    std::cout << "y=" << y << std::endl;
    return;
  }
};

void func1(Base myclass){
  myclass.show();
}

void func2(derived myclass){
  myclass.show();
}

int main(){
  derived a(10, 20);
  a.show();
  Base * Base_ptr = &a;
  derived* derived_ptr = &a;
  Base_ptr->show();
  derived_ptr->show();
  func1(a);
  func2(a);
  return 0;
}




