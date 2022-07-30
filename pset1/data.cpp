#include<iostream>
using namespace std;
const int size = 10;
class demo{
    int num[size];
    public:
    void setval();
    void getval();

};
void demo::setval(){
    for(int i=0;i<size;i++)
    {
        num[i]=(i+1)*10;

    }
}
void demo::getval(){
    for(int i=0;i<size;i++)
    {cout<<num[i]<<" ";
}
cout<<endl;
}
int main(void)
{
    demo x;
    x.setval();
    x.getval();
}
