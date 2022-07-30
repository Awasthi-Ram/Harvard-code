#include<stdio.h>
int main (void){

    int num,i,f;
    int *p,*q,*r;
    p = &num;
    q = &i;
    r = &f;
    scanf("enter any no.",&*p);
    for(i=1;i<=num;i++)
    {
        *r =*r * (*q);
    }
    printf("factorial of gaven no. is =%d",f);
}