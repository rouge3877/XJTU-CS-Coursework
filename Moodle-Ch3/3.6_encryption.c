/*
�����򽫡�China��������룬
�������ʹ�ǣ���ԭ������ĸ�����4����ĸ����ԭ������ĸ��
���磬��ĸ��A�������4����ĸ�ǡ�E�����á�E�����桰A����
���ʾ����
password is ... 
*/
#include<stdio.h>
#define PLAINTEXT "China"
#define LEN_PLAINTEXT 5
int main(void){
	
	char plaintext[LEN_PLAINTEXT] = PLAINTEXT;
	char ciphertext[LEN_PLAINTEXT];
	
	int i;
	for(i = 0; i < LEN_PLAINTEXT; i++){
		ciphertext[i] = plaintext[i] + 4;
	}
	
	printf("password is %s", ciphertext);
	return 0;
}
