#include<stdio.h>

/*int main(void)
{
    int a[2][2];
    int *p;
    p=a;


    for(int i=0;i<4;i++)
    {
            scanf("%d",p);
            p++;
    }
    for(int j=1;j<=4;j++)
    {
        printf("%d",(p-j));
    }
}*/
int main()
{
    int a2d[2][2]={{1,2},{3,4}};
    int *a;
    a=(int*)&a2d;

    for(int i=0;i<2;i++)
    {
        for(int j=0;j<2;j++)
        {
            printf("%d",((*a+i*4)+j));
        }
    }
}