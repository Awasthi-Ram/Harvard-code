#include<stdio.h>
int main(void)
{
    int a[5];
    int b[5];
    int c[10];
    int *r=c;
    int *p=a;
    int *q=b;

    for(int i=0;i<5;i++)
    {
        scanf("%d %d",p,q);
        p++;
        q++;

    }
    for(int j=0;j<10;j++)
    {
        if(j<5)
        *c=*(p+j);
        else
        *c=*(q+j);

    }
    for(int k=0;k<10;k++)
    {
        printf("%d",p+k);
    }
}