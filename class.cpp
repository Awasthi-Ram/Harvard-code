#include<iostream>
#include<string.h>
#include<cs50.h>
using namespace std;
class movie{
    string name;
    int rating;
    int release_year;
public:

    movie(string n, int y,int rating =0){
        this->name=n;
        this->release_year=y;
    }
    void setname(){
        this->name=name;
    }
    string getname()
    {
        return name;
    }
    }
     void setyear(){
        this->year=year;
    }
    int getyear()
    {
        return rating;
    }
    void setrating(int rating)
    {
        if(rating>=1 &&rating<=5)
        {
            this->rating=rating;
        }else
        {
            cout<<"invalid info"<<endl;
        }
    }


};
int main(void)
{
    movie m1("solay",1998);
    cin>>m1.setname;
   /* c();in>>m1.getname;
    c();in>>m1.getname;*/

}

