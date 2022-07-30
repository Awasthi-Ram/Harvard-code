#include <stdio.h>
#include <cs50.h>
int main(void)
{
    int start_size;
// a variable for start size
    do
    {
        start_size = get_int("start size: ");
    }
    while (start_size < 9);
    int end_size;
    //a variable for end_size 
    do 
    {
        end_size = get_int("End size: ");
    }
    while (end_size < start_size);
    int years = 0;
    while (start_size < end_size)
    {
        start_size = start_size + (start_size / 3) - (start_size / 4);
        years++;
    }
    printf("Years: %i\n", years);
    
}