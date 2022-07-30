// Determine how long it takes for a population to reach a particular size.
#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int start_popul;
    int end_popul;
    int years;
    do
    {
        start_popul = get_int("Start size: "); // Prompt for start size
    }
    while (start_popul < 9); // minimum allowed population
    // if we dont want to end our program after while so we just leave while statement
    //we don,t use return fuction because it eend the program
    //return variable is used when we want a specific fuction to run again.
    do // TODO: Prompt for end size
    {
        end_popul = get_int("End size: ");
    }
    while (end_popul < start_popul);
    for (years = 0; start_popul < end_popul ; years++) //counting no. of years
    {

        //  if(start_popul<=end_popul)
        start_popul = start_popul + (start_popul / 3) - (start_popul / 4);

    }


    printf("total no. of Years: %i\n", years);
    // int end_popul = get_int("End size: ");

    // int total_popul = st

    // TODO: Calculate number of years until we reach threshold

    // TODO: Print number of years
}
