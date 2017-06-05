class Center{
  
  int x;
  int y;
  
  Center(int xcor,int ycor){
    x = xcor;
    y = ycor;
  }
  
  void display(){
    image(center,x,y);
  }
}