#include<stdio.h>
#include<cs50.h>
#include<math.h>
int main(void)
{
// ................................................asking for card no.
    long num;
    num = get_long("Enter your card no. = "); // second way of getting input

//        *******************************Luhn’s Algorithm****************** to check validity of
    int sum1 = 0, sum = 0; // checksum
    for (int a = 2; a < 18 ; a = a + 2)
    {
        long long digit = pow(10, a) ;
        long long power = pow(10, a - 1);
        int ram = (((num % digit) / power) * 2);
        if (ram > 9)
        {

            ram = (ram / 10 + ram % 10) ;
        }
        sum = sum + ram;
    }
    for (int b = 1; b < 18 ; b = b + 2)
    {
        long long digit1 = pow(10, b) ;
        long long power1 = pow(10, b - 1);
        int ram1 = ((num % digit1) / power1);

        sum1 = sum1 + ram1;
    }
//printf("%d\n",sum); ----
//printf("%d\n",sum1);----    this is to check above code gaving correct output or not
//printf("%d\n",sum1 + sum);----
    if (((sum1 + sum) % 10) != 0  || ((num < (long)pow(10, 12)) || (num > (long)pow(10, 16)))) // return value if check sum went wrong
    {

        printf("INVALID\n");
    }// -----------------------------------------return main(); if we want a user to rewrite card no. if user input was wrong
//================================================== finding name of credit card ===============================================================
//else if((int)(num/pow(10,14)) != 0 && (int)(num/pow(10,16)) == 0)------- another way of writing condition
    else if (((num >= (long)pow(10, 14)) && (num < (long)pow(10, 15))) || ((num >= (long)pow(10, 15))  && (num < (long)pow(10, 16)))
             || ((num >= (long)pow(10, 12))  && (num < (long)pow(10, 13))))
    {
        if ((int)(num / pow(10, 13)) == 34 || (int)(num / pow(10, 13)) == 37)
        {
            printf("AMEX\n");
        }
        else if ((int)(num / pow(10, 14)) == 51 || (int)(num / pow(10, 14)) == 52 || (int)(num / pow(10, 14)) == 53
                 || (int)(num / pow(10, 14)) == 54 || (int)(num / pow(10, 14)) == 55)
        {
            printf("MASTERCARD\n");
        }
        else if (((int)(num / ((long)pow(10, 12))) == 4) || ((int)(num / ((long)pow(10, 15)) == 4)))
        {
            printf("VISA\n");
        }
        else
        {
            printf("INVALID\n");
        }

    }
    else
    {
        printf("INVALID\n");
    }

}

