#include<iostream.h>

class circle{
  double radius =1.0;
  string colour = "red";
  
  public:
  circle(){
      
  }
  circle (double radius,string colour)
  {
      this->radius=radius;
      this->colour=colour;
  }
  void setradius()
  {
      this->radius=radius;
  }
};