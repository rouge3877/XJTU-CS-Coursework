/*
��4��Բ������α�ͼ4.17��ʾ������10m��
����һ���꣬��õ�Ľ����߶ȣ�����Ϊ0����
����1.5,0ʱ�������
������һ����(x,y):�õ�߶�Ϊ0
*/
#include<stdio.h>
#include<math.h>
//#include<stdlib.h>

int main(void){
	
	printf("������һ����(x,y):");
	double x,y;
	scanf("(%lf,%lf)",&x,&y);

	x = fabs(x);
	y = fabs(y);

	if( ((x-2)*(x-2)+(y-2)*(y-2)) <= 1){
		printf("�õ�߶�Ϊ10");
	}else{
		printf("�õ�߶�Ϊ0");
	}
	

//	printf("\n");system("PAUSE");
	return 0;
}  
