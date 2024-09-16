#include <iostream>
#include <cstring>
#include <string>

class String {
private:
    char* array;

public:
    // Constructor
    String(const char* p = "") {
        array = new char[strlen(p) + 1];
        strcpy(array, p);
    }
    
    operator int() {
        return strlen(this->array);
    }

    // Destructor
    ~String() {
        delete[] array;
    }

    // Copy constructor
    String(const String& other) {
        array = new char[strlen(other.array) + 1];
        strcpy(array, other.array);
    }

    // Assignment operator
    String& operator=(const String& other) {
        if (this != &other) {
            delete[] array;
            array = new char[strlen(other.array) + 1];
            strcpy(array, other.array);
        }
        return *this;
    }

    // Concatenation operator
    String &operator+(const String& other) {
        char* newStr = new char[strlen(array) + strlen(other.array) + 1];
        strcpy(newStr, array);
        strcat(newStr, other.array);
        String result(newStr);
        free(array);
        array = newStr;
        return *this;
    }

    // Special handling for "ab"
    String operator+(const char* suffix) {
        char* newStr = new char[strlen(array) + strlen(suffix) + 1];
        strcpy(newStr, array);
        strcat(newStr, suffix);
        String result(newStr);
        delete[] newStr;
        return result;
    }


    // Stream insertion operator
    friend std::ostream& operator<<(std::ostream& os, const String& s) {
        os << s.array;
        return os;
    }

    // Index operator with range checking
    char& operator[](size_t index) const {
        if (index >= strlen(array)) {
            std::cout << "Index out of range." << std::endl;
            static char dummy = '\0';
            return dummy;
        }
        return array[index];
    }

    // Method to handle string + number, simulating length calculation
};

int main() {
    String string1("mystring"), string2("yourstring"), string3("herstring");
    std::cout << string1 << std::endl;
    string1[7] = 'n';
    std::cout << string1 << std::endl;
    string1[8] = 'n';
    std::cout << string1 + string2 + string3 << std::endl;
    std::cout << string1 << std::endl;
    std::cout << string2 + "ab" << std::endl;
    std::cout << string2 << std::endl;
    std::cout << string3 + 3 << std::endl;
    std::cout << string3 << std::endl;
    return 0;
}

