class Path{
  
  int x,y;
  color c;
  
  Path(int xcor,int ycor){
    c = #CAD1CB;
    x = xcor;
    y = ycor;
  }
  
  void display(){
    image(pt,x,y);
  }
}