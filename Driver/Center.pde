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
  
  boolean checkCenter(int xcor,int ycor){
   return (xcor >= x-100 && xcor <= x+100) && (ycor >= y-100 && ycor <= y+100);
  }
}