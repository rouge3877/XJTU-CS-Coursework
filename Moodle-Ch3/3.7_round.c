/*
����Բ�뾶��Բ���ߣ���Բ�ܳ���Բ�����Բ��������Բ�������Բ�������
�밴ʾ��˵�������ȡС�������λ����
������1.5,3ʱ�����ʾ����
������Բ�뾶r��Բ����h��
Բ�ܳ�Ϊ:9.42
Բ���Ϊ:7.07
Բ������Ϊ:28.27
Բ�����Ϊ:14.14
Բ�����Ϊ:21.21
*/ 
#include<stdio.h>
#define PI 3.1415

int main(void){
	
	double r,h;
	printf("������Բ�뾶r��Բ����h��");
	scanf("%lf %lf",&r,&h);
	
	double Circumference, 
		   Circular_area, 
		   Sphere_area, 
		   Spherical_volume, 
		   Cylinder_volume;
		   
	Circumference = 2*r*PI;
	Circular_area = r*r*PI;
	Sphere_area = 4*r*r*PI;
	Spherical_volume = 4*r*r*r*PI*0.33333;
	Cylinder_volume = Circular_area * 3;
	
	printf("\nԲ�ܳ�Ϊ:%.2lf\nԲ���Ϊ:%.2lf\nԲ������Ϊ:%.2lf\nԲ�����Ϊ:%.2lf\nԲ�����Ϊ:%.2lf",
	Circumference, Circular_area, Sphere_area, Spherical_volume, Cylinder_volume);
	
	return 0;
} 
