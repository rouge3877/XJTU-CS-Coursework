#include <stdio.h>
//#include<stdlib.h>
int main(void) {
    int i;
    double S = 0; // ��·��
    double H = 100.0; // ��ظ߶�
    for (i = 1; i < 10; i++) {
        S += H; // �ۼ�����͵����·��
        H = H / 2; // ������ظ߶�
        S += H;
    }
    S += H; // �ۼ����һ������͵����·��
    double h=H/2;
    printf("��10�����ʱ������%.6lf��\n", S);
    printf("��10�η���%.6lf��\n", h);
    //system("PAUSE");
    return 0;
}
