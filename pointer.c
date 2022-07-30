#include<stdio.h>

int main(void)
{
    int n,i,f=1;
    int *p=&n,*q=&i,*r=&f;

    scanf("%d",&*p);

    for(*q=1;*q<=n;(*q)++)
    {
        *r=(*r)*(*q);
    }
    printf("f=%d",*r);
}