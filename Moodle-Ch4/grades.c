/*
����һ�ٷ��Ƴɼ���Ҫ������ɼ��ȼ�'A'��'B'��'C'��'D'��'E'��
90������ΪA��80~89��ΪB��70~79��ΪC��60~69��ΪD��60������ΪE��
������1.0ʱ����ע�Ᵽ��һλС���������ʾ����
������ѧ���ɼ�:�ɼ���1.0,��Ӧ�ĵȼ���E
*/ 
#include<stdio.h>
int main(void){
	
	float score;
	printf("������ѧ���ɼ�:");
	scanf("%f",&score);
	
	if (score >= 90)
		printf("�ɼ���%.1f,��Ӧ�ĵȼ���A",score);
	else if (score >= 80 && score <90)
		printf("�ɼ���%.1f,��Ӧ�ĵȼ���B",score);
	else if (score >= 70 && score <80)
		printf("�ɼ���%.1f,��Ӧ�ĵȼ���C",score);
	else if (score >= 60 && score <70)
		printf("�ɼ���%.1f,��Ӧ�ĵȼ���D",score);
	else
		printf("�ɼ���%.1f,��Ӧ�ĵȼ���E",score);
		
	return 0;
}
