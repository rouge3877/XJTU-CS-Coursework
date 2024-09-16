#include <iostream>
#include <cstring>
using namespace std;

int main(){
	int length = 1;
	char * res_str = new char[length];
	char s[20];
	while(cin>>s){
		length += strlen(s);
		char * temp_str = new char[length];
		strcpy(temp_str, res_str);
		strcat(temp_str, s);
		char * temp = res_str;
		res_str = temp_str;
		memset(s, 0, 20);
		delete[] temp;
	}
	cout << res_str << endl;
	delete[] res_str;
	return 0;
}