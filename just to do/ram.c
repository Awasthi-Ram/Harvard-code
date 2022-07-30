// to find the minimum no. of coin required to gave change
#include <stdio.h>
#include <math.h>
#include <cs50.h>

int main()
{
    int change_owed;

    do
    {
        float dollars_owed = get_float("Change owed: ");
        change_owed = round(dollars_owed * 100);// because we are dealing in cents
    }
    while (change_owed <= 0);

    int quarters = change_owed / 25;
    int dimes = (change_owed % 25) / 10;
    int nickels = ((change_owed % 25) % 10) / 5;
    int pennies = ((change_owed % 25) % 10) % 5;

    printf("%d\n", quarters + dimes + nickels + pennies);
}