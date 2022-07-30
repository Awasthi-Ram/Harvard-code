#include<stdio.h>

int main(void)
{
    int a[5];
    int *p=a;

   /* for(p=a;p<p+4;p=p+1)
    {
        scanf("%d",p);
    }*/
    for(int i =0;i<5;i++)
    {
        scanf("%d"p+i);
    }
    p=p+4;
    for(int j=1;j<=5;j++)
    {
        printf("%d",p);
        p=p-1;
    }
}