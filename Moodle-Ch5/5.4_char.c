/*
����һ���ַ����ֱ�ͳ�Ƴ�����Ӣ����ĸ���ո����ֺ������ַ��ĸ�����
ʾ����
����:hello 12
�����
Ӣ����ĸ5
�ո�1
����3   
�����ַ�1
ע�⣺�����Ի��з�Ϊ��β�����з���Ϊ�����ַ�����ͳ�ƽ��
(����ϵͳԵ��,��ʹ��getchar�����뽫ѭ����ֹ������Ϊ������EOF����'\n')
*/
#include<stdio.h>
//#include<stdlib.h>

int main(void){

    char  chars;
    int count[4] = {0,0,0,1};

    while((chars = getchar()) != '\n'){
        if((chars >= 'a' && chars <='z')||(chars >= 'A' && chars <= 'Z'))
            count[0]++;
        else if(chars == ' ')
            count[1]++;
        else if(chars >= '0' && chars <= '9')
            count[2]++;
        else
            count[3]++;
    }

    printf("Ӣ����ĸ%d\n�ո�%d\n����%d\n�����ַ�%d",count[0],count[1],count[2],count[3]);

//    system("PAUSE");
    return 0;
}