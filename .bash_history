// Convert image to sepia
void sepia(int height, int width, RGBTRIPLE image[height][width])
{     float sepiaRed, sepiaGreen, sepiaBlue;     // itterate through all the pixels;     for (int i = 0; i < height; i++)
}
// Reflect image horizontally
void reflect(int height, int width, RGBTRIPLE image[height][width])
{     RGBTRIPLE temp[width];     int temp_index = width - 1;     for (int y = 0; y < height; y++)
}
// Blur image
void blur(int height, int width, RGBTRIPLE image[height][width])
{     RGBTRIPLE temp[height][width];     // Copy the original image to a temp variable;     int cornerCounter = 0; // debug;     int edgeCounter = 0; //debug     for (int col = 0; col < height; col++) //y
}
// CORNER DETECTION - FOR BLUR
// Checks to see if RGBTRIPPLE to be AVERAGED is a corner pixel
// 0 = not a corner, 1 = top left, 2 = top right, 3 = bottom left, 4 = bottom right
// x and y = curent pixel location; height and width = photo size
int isCorner(int y, int x, int height, int width)
{     // check top left corner;     if ((y == 0) && (x == 0));     {         //printf("Top left corner pixel found [y:%i, x:%i].\n", y, x); // debug
}
// EDGE DETECTION - FOR BLUR
// Checks to see if RGBTRIPPLE to be AVERAGED is an edge pixel
// 0 = not an edge, 1 = Top edge, 2 = Right edge, 3 = Bottom edge, 4 - Left edge
// x and y = curent pixel location; height and width = photo size
int isEdge(int y, int x, int height, int width)
{     // check for top edge;     if ((y == 0) && (x > 0 && x < width - 1));     {         //printf("Top edge found [y:%i, x:%i].\n", y, x); // debug
}
$ ./filter -r image.bmp reflected.bmp
check50 cs50/problems/2021/x/filter/less
cd week2
check50 cs50/problems/2021/x/filter/less
submit50 cs50/problems/2021/x/filter/less
cd week3
check50 cs50/problems/2021/x/recover
cd ..
check50 cs50/problems/2021/x/recover
submit50 cs50/problems/2021/x/recover
cd
cd week5
// Simulate genetic inheritance of blood type
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
// Each person has two parents and two alleles
typedef struct person
{     struct person *parents[2];     char alleles[2]; }
person;
const int GENERATIONS = 3;
const int INDENT_LENGTH = 4;
person *create_family(int generations);
void print_family(person *p, int generation);
void free_family(person *p);
char random_allele();
int main(void)
{     // Seed random number generator;     srand(time(0));
}
// Create a new individual with `generations`
person *create_family(int generations)
{     // TODO: Allocate memory for new person;     person *new_person = malloc(sizeof(person));
}
// Free `p` and all ancestors of `p`.
void free_family(person *p)
{     person *tmp = p;     if (tmp == NULL);     {         // do nothing...;     };     else
}
// Print each family member and their alleles.
void print_family(person *p, int generation)
{     // Handle base case;     if (p == NULL);     {         return;     }     // Print indentation;     for (int i = 0; i < generation * INDENT_LENGTH; i++)
}
// Randomly chooses a blood type allele.
char random_allele()
{     int r = rand() % 3;
submit50 cs50/labs/2021/x/inheritance
check50 cs50/problems/2021/x/speller
wget http://cdn.cs50.net/2021/spring/psets/5/speller/speller.zip
unzip speller.zip
rm speller.zip
cd speller
check50 cs50/problems/2021/x/speller
cd datastuture
make bubble_short
./bubble_short
make bubble_short
./bubble_short
make bubble_short
./bubble_short
make bubble_short
./bubble_short
make bubble_short
./bubble_short
make bubble_short
./bubble_short
cd week3
cd week2
cd week3
make plurality
./pularity
./plurality
cd
cd week5
$ check50 cs50/problems/2021/x/speller
cd speller
$ check50 cs50/problems/2021/x/speller
cd just to do
cd week5
cd speller
cd week5
cd speller
$ check50 cs50/problems/2021/x/speller
check50 cs50/problems/2021/x/speller
make speller
./speller
/speller texts/lalaland.txt
./speller texts/lalaland.txt
wget http://cdn.cs50.net/2021/spring/psets/5/speller/speller.zip
unzip speller.zip
cd
unzip speller.zip
wget http://cdn.cs50.net/2021/spring/psets/5/speller/speller.zip
unzip speller.zip
cd speller
./speller dictionaries/large text
make speller
~cs50/2019/fall/pset5/speller texts/lalaland.txt
// Implements a dictionary's functionality


#include <ctype.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>

#include "dictionary.h"

// Represents a node in a hash table
typedef struct node
{
    char word[LENGTH + 1];
    struct node *next;
}
node;


// Number of buckets in hash table 2^16
const unsigned int N = 65536;

// Hash table
node *table[N];
int wordcount=0;


//declare empty head
node *head = NULL;

// Returns true if word is in dictionary else false
bool check(const char *word)
{
    int length =strlen(word);
    char copy[length+1]; // take a byte extra for NTC
    copy[length] = '\0'; // necessary to add the ntc after allocating space to it

// not converting gave errors to :) handles min length (1-char) words
//:) handles max length (45-char) words
//:) handles words with apostrophes properly
//:) spell-checking is case-insensitive

 for (int i = 0; i < length; i++) // we take the word and LC and save that into copy
    {
        copy[i] = tolower(word[i]);
    }


       int hashcode=hash(copy); // get a hashcode for that copy
       node *tmp=table[hashcode]; // take a pointer tmp to point at what that array of hashcode is pointing
       if(tmp==NULL) // if tmp points to null return
       {
           return false;
       }

       while(tmp!=NULL) // do it until the ll ends
       {
           if(strcasecmp(tmp->word,copy)==0) // check case insesnitive for word in node to our word(copy)
           {
               return true; // if found
           }

                tmp=tmp->next; // else move to next node, traverse the ll
        }

       return false; // if not found copy until end
}

// Hashes word to a number
//  stackoverflow
//https://www.reddit.com/r/cs50/comments/1x6vc8/pset6_trie_vs_hashtable/ this was for a prior one that I altered later to ^


unsigned int hash(const char *word)
{
    unsigned long hash = 5381;

    int c = *word;

    while (c == *word++)
    {
        hash = ((hash << 5) + hash) + c; /* hash * 33 + c */
    }
    return hash % N;
}


// Loads dictionary into memory, returning true if successful else false
bool load(const char *dictionary)
{
   FILE *file=fopen(dictionary,"r"); // open dict and read it, pointer to it is file
   if(file==NULL) // if the pointer points to null return
   {
       return false;
   }
   {
       // assign a buffer of size 1 for NTC
      char buffer[LENGTH+1];
       while(fscanf(file,"%s",buffer)!=EOF) // until eof
       {

       node *n=malloc(sizeof(node)); // allot memory for n
          if(n==NULL) // check if memory is alloted
          {

            fclose(file);
           return false;
          }

         else // if yes
          {

              strcpy(n->word,buffer); // copy word from buffer to word field of node n

           n->next=NULL; // at first the n node points to null

           unsigned int index =hash(buffer); // hash the word in buffer to get index of array

           // our current node points to what array is pointing at and then the array points to our node
           // even if our array points to null then this node points to null, it is better than initializing the array to null and then taking if/else

               n->next=table[index]; // this is done to avoid orphaning rest of the ll
               table[index]=n; // it gets inserted in beginning of ll

           wordcount++; // increment the word count until eof

             }
       }
       fclose(file);
       return true;
   }


}


// Returns number of words in dictionary if loaded else 0 if not yet loaded
unsigned int size(void)
{
    // TODO
    return wordcount; // we had a counter for this in load after word was read,copied and added to ll
}

// Unloads dictionary from memory, returning true if successful else false
bool unload(void)
{
    for(int i=0;i<N;i++) // loop thru all the arrays
   {
    // tmp1 is like a cursor that points to each node while tmp2 is the pointer that frees the prior node
    node *tmp1=table[i]; // initially tmp1 points to 1st node
    while(tmp1!=NULL) // until end of ll
        {
           node *tmp2 = tmp1; // tmp2 points to what tmp1 points
            tmp1 = tmp1 -> next; // tmp1 points to next node
            free(tmp2); // tmp2 frees the prior node
        }
   }

    return true;
}
make speller
cd speller
make speller
./speller
check50 cs50/problems/2021/x/speller
style50 dictionary.c
submit50 cs50/problems/2021/x/speller
cd phyton
phyton print.py
python print.py
cd phyton
python print.py
cd python
python exit.py
cd python
python hello.py
check50 cs50/problems/2021/x/sentimental/hello
style50 hello.py
submit50 cs50/problems/2021/x/sentimental/hello
submit50 cs50/problems/2021/x/sentimental/mario/more
style mario.py
style50 mario.py
submit50 cs50/problems/2021/x/sentimental/credit
submit50 cs50/problems/2021/x/sentimental/readability
wget https://cdn.cs50.net/2020/fall/psets/6/dna/dna.zip
unzip dna.zip
rm dna.zip
cd dna
ls
submit50 cs50/problems/2021/x/dna
wget https://cdn.cs50.net/2020/fall/labs/6/lab6.zip
unzip lab6.zip
cd lab6
submit50 cs50/labs/2021/x/worldcup
cd 
wget https://cdn.cs50.net/2020/fall/labs/7/lab7.zip
unzip lab7.zip
rm lab7.zip
cd lab7
submit50 cs50/labs/2021/x/songs
cd
mkdir pset7
cd pset7
wget https://cdn.cs50.net/2020/fall/psets/7/movies/movies.zip
unzip ovies.zip
unzip movies.zip
re movies.zip
rm movies.zip
ls
cd movies
submit50 cs50/problems/2021/x/movies
cd
cd pset7
wget https://cdn.cs50.net/2020/fall/psets/7/fiftyville/fiftyville.zip
unzip fiftyville.zip
rm fiftyville.zip
cd fiftyville 
submit50 cs50/problems/2021/x/fiftyville
cd
wget https://cdn.cs50.net/2020/fall/labs/8/lab8.zip
unzip lab8.zip
rm lab8.zip 
cd lab8
submit50 cs50/labs/2021/x/trivia
cd
mkdir pset8
cd pset8
wget http://cdn.cs50.net/2020/fall/psets/8/homepage/homepage.zip
unzip homepage.zip
rm homepage.zip
cd homepage
cd
submit50 cs50/problems/2021/x/homepage
cd pset8
cd homepage
submit50 cs50/problems/2021/x/homepage
cd
wget https://cdn.cs50.net/2020/fall/labs/9/lab9.zip
unzip lab9.zip
rm lab9.zip
cd lab9
submit50 cs50/labs/2021/x/birthdays
cd
wget http://cdn.cs50.net/2020/fall/psets/9/finance/finance.zip
unzip finance.zip
rm finance.zip
cd finance
submit50 cs50/problems/2021/x/finance
cd finance
import os
from cs50 import SQL
from flask import Flask, flash, redirect, render_template, request, session
from flask_session import Session
from tempfile import mkdtemp
from werkzeug.exceptions import default_exceptions, HTTPException, InternalServerError
from werkzeug.security import check_password_hash, generate_password_hash
from helpers import apology, login_required, lookup, usd
# Configure application
app = Flask(__name__)
# Ensure templates are auto-reloaded
app.config["TEMPLATES_AUTO_RELOAD"] = True
# Ensure responses aren't cached
@app.after_request
def after_request(response):
# Custom filter
app.jinja_env.filters["usd"] = usd
# Configure session to use filesystem (instead of signed cookies)
app.config["SESSION_FILE_DIR"] = mkdtemp()
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)
# Configure CS50 Library to use SQLite database
db = SQL("sqlite:///finance.db")
# Make sure API key is set
if not os.environ.get("API_KEY"):
@app.route("/")
@login_required
def index():
@app.route("/sell", methods=["GET", "POST"])
@login_required
def sell():
@app.route("/reset", methods=["GET", "POST"])
@login_required
def reset():
def errorhandler(e):
# Listen for errors
for code in default_exceptions:
submit50 cs50/problems/2021/x/finance
cd java
java ram.java
cd java
java welcome
java welcome.java
cd readability
./readability
check50 cs50/problems/2021/x/sentimental/readability
submit50 cs50/problems/2021/x/sentimental/readability
style50
style50 readability.py
submit50 cs50/problems/2021/x/sentimental/readability
cd project
submit50
submit50 cs50/problems/2021/x/project
chrome index.html
db = SQL("sqlite:///finance.db")
https-server
http-server
cd project
http-server
http-server index.html
git status
git init
git status
git add .
git commit -m"filter your photo frist commit"
git config --global user.email "ramawasthi300@gmail.com"
git config --global user.name "ram"
git config -v
git commit -m"filter your photo frist commit"
git remote add filter https://github.com/ramawasthi300/Filter-your-photo.git
git remote -v
ls -al ~/.ssh
ssh -add ~/.ssh/id_rsa
ssh-add ~/.ssh/id_ed25519
eval "$(ssh-agent -s)"
> Agent pid 59566
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
ssh-add ~/.ssh/id_ed825
ssh-add ~/.ssh/project
ssh-add ~/.ssh/id_rsa.pub
git push -u filter master
cd ..
cd pset1
cd hello
gcc data.cpp -o data
gcc+ data.cpp -o data
mkdir javaclg
cd javaclg
mkdir day_3
touch test.java
cd java
mkdir javaclg
cd javaclg
mkdir day2
cd day2
touch test.java
javac test.java
java test
git init
git add .
java test
cd java
cd javaclg/day2
javac test.java
java test'
java test
cd ..
mkdir day3
cd day3
touch memder_inner_class .java
touch innerclass.java
javac innerclass.java
java innerclass
touch innerclass2.java
javac innerclass2.java
touch static_inner.java
javac  static_inner.java
java  static_inner
javac  static_inner.java
java  static_inner
javac  static_inner.java
java  static_inner
javac  static_inner.java
java  static_inner
git init
git status
git init
git add .
git staus
git status
