/*
��һ�е��ģ����������������룬
��1����ĸ��ɵ�26����ĸ����i����ĸ��ɵڣ�26-i+1������ĸ��
����ĸ�ַ����䣬������������ԭ�ģ�����������ԭ�ġ�
ʾ����
����Ϊ
ԭ��Ϊ
*/

#include <stdio.h>
#include <string.h>
// #include<stdlib.h>
#define LENGTH 100

char *declassification(char *ciphertext);
int main(void)
{

    // char ciphertext[LENGTH];//???????
    char ciphertext[LENGTH] = {'\0'};
    int i;

    for (i = 0; i < LENGTH; i++)
    {
        scanf("%c", &ciphertext[i]);
        if (ciphertext[i] == '\n')
            break;
    }
    ciphertext[i] = '\0';

    char *plaintext = declassification(ciphertext);

    printf("����Ϊ%s\n", ciphertext);
    printf("ԭ��Ϊ%s", plaintext);
    // system("PAUSE");
    return 0;
}

char * declassification(char *ciphertext)
{

    int i;
    char static plaintext[LENGTH];
    for (i = 0; i < LENGTH; i++)
        plaintext[i] = 0;

    for (i = 0; i < strlen(ciphertext); i++)
    {
        if (ciphertext[i] >= 'a' && ciphertext[i] <= 'z')
        {
            plaintext[i] = 'z' - ciphertext[i] + 'a';
        }
        else if (ciphertext[i] >= 'A' && ciphertext[i] <= 'Z')
        {
            plaintext[i] = 'Z' - ciphertext[i] + 'A';
        }
        else
        {
            plaintext[i] = ciphertext[i];
        }
    }

    return plaintext;
}
