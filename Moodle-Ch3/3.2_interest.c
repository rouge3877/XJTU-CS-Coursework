/*
�����Ϣ�ļ��㡣��1000Ԫ�����5�꣬�ɰ�����5�ְ취�棺
��1��һ�δ�5���ڡ�
��2���ȴ�2���ڣ����ں󽫱�Ϣ�ٴ�3���ڡ�
��3���ȴ�3���ڣ����ں󽫱�Ϣ�ٴ�2���ڡ�
��4����1���ڣ����ں󽫱�Ϣ�ٴ�1���ڣ�������5�Ρ�
��5������ڴ�������Ϣÿһ���Ƚ���һ�Ρ�
2017������д����Ϣ���£�
1���ڶ��ڴ����ϢΪ1.5%��
2���ڶ��ڴ����ϢΪ2.1%��
3���ڶ��ڴ����ϢΪ2.75%��
5���ڶ��ڴ����ϢΪ3%��
���ڴ����ϢΪ0.35%�����ڴ��ÿһ���Ƚ���һ����Ϣ����

���ʾ����
p1=1150.000000
p2=1127.965000
p3=1127.965000
p4=1077.284004
p5=1017.646235
*/
#include<stdio.h>
#define MONEY 1000
#define INTEREST_1YEAR 1.5
#define INTEREST_2YEAR 2.1
#define INTEREST_3YEAR 2.75
#define INTEREST_5YEAR 3
#define INTEREST_NYEAR 0.35

double power(double base,int index);

int main(void){
	double p1,p2,p3,p4,p5;
	
	p1=MONEY*(1+INTEREST_5YEAR*0.01*5);
	p2=MONEY*(1+INTEREST_2YEAR*0.01*2)*(1+INTEREST_3YEAR*0.01*3);
	p3=MONEY*(1+INTEREST_3YEAR*0.01*3)*(1+INTEREST_2YEAR*0.01*2);
	p4=MONEY*power(1+INTEREST_1YEAR*0.01,5);
	p5=MONEY*power((1+INTEREST_NYEAR*0.01*0.25),20);
	
	printf("p1=%.6lf\np2=%.6lf\np3=%.6lf\np4=%.6lf\np5=%.6lf",p1,p2,p3,p4,p5);
	return 0;
}

double power(double base,int index){
	double sum = 1;
	int i;
	for(i = 0; i < index; i++){
		sum = sum * base;
	}
	return sum;
}
