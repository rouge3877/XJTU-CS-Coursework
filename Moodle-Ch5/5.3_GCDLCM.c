/*��������������m��n,�������Լ������С��������
����5,8ʱ�����ʾ����
����������������n,m:���ǵ����Լ��Ϊ:1
���ǵ���С������Ϊ:40
*/
#include<stdio.h>
//#include<stdlib.h>
int main(void){

    int m,n;
    int temp;
    printf("����������������n,m:");
    scanf("%d,%d",&m,&n);
    int x = m*n;

    while(m * n != 0){
        temp = m % n;
        m = n;
        n = temp;
    }

    printf("���ǵ����Լ��Ϊ:%d\n",m);
    printf("���ǵ���С������Ϊ:%d",(x / m));

//	system("PAUSE");
    return 0;
}