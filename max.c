#include<stdio.h>
int main(void)
{
    int num[5],i,j,k=num[0],l,m,n=num[0];
    for(j=1;j<=5;j++)
    {
    printf("enter the value of element\n");
    scanf("%d",&num[j]);
    }
    for(i=1;i<5;i++)
    {
        if(k<num[i])
        {
            k=num[i];
            //l=i;
        }

    }

    for(m=1;m<5;m++)
    {
        if(n<num[m] && num[m]!=k)
        {
            n=num[m];

        }
    }
    printf("max1 = %d max2 =%d",k,n);

}