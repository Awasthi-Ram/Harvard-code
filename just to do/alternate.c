#include<stdio.h>

using namespace std;

int main(void)
{
    int a[80]={4,6,7,1,2,3,8,6};
    int b[4] ={4,8,7,9};
    int c[10]=a[20];
    
    for(int i = 0 ;i<sizeof(c);i++)
    {
        if(i == 0 && i%2 !=0)
        a[i] = c[i];
        else
        a[i] = c[i-1];
    }
    for(int i =0 ; i< sizeof(c);i++)
    {
        printf("%d",a[i]);
    }
}