#include <iostream>
#include <cstring>

class Base{
private:
  char* name;
  int age;
public:
  Base(const char * set_name, int set_age){
    name = new char[strlen(set_name)+1];
    strcpy(name, set_name);
    age = set_age;
    std::cout << "Base constructor" << std::endl;
  }

  ~Base(){
    delete[] name;
    std::cout << "Base destructor" << std::endl;
  }
  void show(){
    std::cout << name << ' ' << age << ' ';
  }
};

class Leader: virtual public Base{
private:
  char duty[10];
public:
  Leader(const char * name, int set_age,const char* set_duty): Base(name, set_age){
    memset(duty, 0, 10);
    strcpy(duty, set_duty);
    std::cout << "Leader constructor" << std::endl;
  }

  ~Leader(){
    std::cout << "Leader destructor" << std::endl;
  }

  void show(){
    Base::show();
    std::cout << duty << ' ';
  }
};

class Engineer:virtual public Base{
private:
  char major[10];
public:
  Engineer(const char * name, int set_age,const char* set_major): Base(name, set_age){
    memset(major, 0, 10);
    strcpy(major, set_major);
    std::cout << "Engineer constructor" << std::endl;
  }

  ~Engineer(){
    std::cout << "Engineer destructor" << std::endl;
  }

  void showMajor(){
    std::cout << major << ' ';
  }

  void show(){
    Base::show();
    showMajor();
  }
};

class Chairman: public Leader, public Engineer{
public:
  Chairman(const char * name, const char* set_duty,const char* set_major, int set_age):Base(name, set_age), Engineer(name,set_age, set_major), Leader(name,set_age, set_duty){
    std::cout << "Chairman constructor" << std::endl;
  }
  
  ~Chairman(){
    std::cout << "Chairman destructor" << std::endl;
  }

  void show(){
    Leader::show();
    Engineer::showMajor();
    std::cout << std::endl;
    return;
  }
};


int main(){
  Chairman a("Li","chair","computer",20);
  a.show();
  return 0;
}
