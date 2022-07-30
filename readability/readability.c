#include<stdio.h>
#include<cs50.h>
#include<string.h>
#include<math.h>
int main(void)
{
    int words = 1, letters = 0, sentences = 0, grade, i;
    string text = get_string("Text:  ");
    float index;
    for (i = 0; i < strlen(text);i++)
    {
        if ((text[i] >= 'a' && text[i] <= 'z') || (text[i] >= 'A' && text[i] <= 'Z'))
        {
            letters++;
        }

        else if (text[i] == ' ')
        {
            words++;
        }
        else if (text[i] == '?' || text[i] == '!' || text[i] == '.')
        {
            sentences++;
        }
    }

    index = 0.0588 * (100 * (float)letters / (float)words) - 0.296 * (100 * (float)sentences / (float)words)  - 15.8;

    if (index < 16 && index >= 0)
    {
        printf("Grade %i\n", (int) round(index));
    }
    else if (index >= 16)
    {
        printf("Grade 16+\n");
    }
    else
    {
        printf("Before Grade 1\n");
    }
    //printf("letter = %d",letters);
}


