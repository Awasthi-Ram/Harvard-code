//problem set1 credit to check credit card no, is legal or not.
#include<stdio.h>
#include<cs50.h>
int main(void)
{
    //to get a card no.
    long num;
    do {
        num = get_long("num: ");
    }
    while(num<1000000000 || num>10000000000000000);
    //to know frist to digit of the number
    int digits=2;
    long strnum=num;
    while (strnum>100)
    {
        strnum /= 10;
        digits++;
    }
    //now i will use luhn's algorithm
    int sum =0, xsum=0,extra;
    for(int i=0;i<digits;i++)
    {
        if(i%2==0)
        {

            sum=sum +num%10;
            num /= 10;
        }
        else
        {
            if((num%10*2)>9)
            {
                extra =num%10*2;
                xsum=xsum+extra%10;
                extra /=10;
                xsum += extra;
            }
            else
            {
                xsum=xsum+(num%10*2);
            }
            num /= 10;
        }
    }
    if((sum+xsum)%10!=0)
    {
        printf("invalid\n");
        return 0;
    }
    // for checking which credit card company card is it
    if (strnum==34 || strnum==37)
    {
        printf("amex\n");// as gaven in the problem set
    }
    else if (strnum /10==4 && digits >12)
    {
        printf("visa\n");
    }
    else
    {
        printf("invalid\n");
    }
}