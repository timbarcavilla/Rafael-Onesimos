class DarkGrass{
  
  color c;
  int x;
  int y;
  
  DarkGrass(int xcor, int ycor){
    
    x = xcor;
    y = ycor;
    c = #187121;
    
  }
  
  void display(){
    fill(c);
    image(dGrass,x,y);
  }
}