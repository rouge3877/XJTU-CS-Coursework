/*
��һ��������5λ����������Ҫ��
1.������Ǽ�λ����
2.�ֱ����ÿһλ���֣�
3.�����������λ���֣�
����20�����ʾ����
������һ������(0-99999):λ��:2
ÿλ����Ϊ:2,0
��������Ϊ:02
*/
#include<stdio.h>
#include<stdlib.h>

int digits(int);
int * eachNumber(int,int); 
int main(void){
	
	int num; 
	printf("������һ������(0-99999):");
	scanf("%d",&num);
	
	int digit;
	int * eachnum;
	digit = digits(num);
	printf("λ��:%d\n",digit);
	eachnum = eachNumber(num,digit);
	
	int i;
	printf("ÿλ����Ϊ:");
	for(i=0; i<digit; i++){
		printf("%d", eachnum[i]);
		if(i != digit-1){
			printf(",");
		}
	}
	
	printf("\n��������Ϊ:");
	for(i=digit-1; i>=0; i--){
		printf("%d", eachnum[i]);
	}
	
	free(eachnum);
	return 0;
} 

int digits(int num){
	if(num > 9999)
		return 5;
	else if(num > 999)
		return 4;
	else if(num > 99)
		return 3;		
	else if(num > 9)
		return 2;	
	else
		return 1;
}

int * eachNumber(int num,int digit){
    int * eachnum;
    eachnum = (int *) malloc(sizeof(int)*5); 
    
    int i;
	for(i = digit-1; i>=0; i=i-1){
		eachnum[i] = num % 10;
		num /= 10;
	}
	
    return eachnum;
}
