#include<stdio.h>
#include<cs50.h>

int main(void)
{
    int height;
    do
    {
        height = get_int("Height : ");// input height
    }
    while (height < 1 || height > 8);// limiting height

    for (int rows = 0; rows < height ; rows++) // intro ducing rows with incial value 0 
    {
        for (int space = height - rows - 1; space > 0; space--) //using formula
        {
            printf(" ");
        }
        for (int hash1 = rows + 1 ; hash1 > 0 ; hash1--)//variable inisilisation 
        {
            printf("#");
        }
        printf("  ");

        for (int hash1 = rows + 1 ; hash1 > 0 ; hash1--)
        {
            printf("#");
        }
        printf("\n");
    }
}