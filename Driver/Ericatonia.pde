class Ericatonia extends Map{
  
  Ericatonia(){
    gymX1 = 400;
    gymX2 = 500;
    gymY1 = 100;
    gymY1 = 200;
    centerX1 = 100;
    centerX2 = 200;
    centerY1 = 400;
    centerY2 = 500;
    gymlvl = 1;
    ex1 = new Exit(280,360,0,50);
    ex2 = new Exit(280,360,600,650);
    c = new Center(360,440);
    g = new Gym(gymlvl, "Ericatonia City Gym", "Eric Chen",1, 50,50);
  }
  
  void setPath(){
    for (int x = 0; x<width; x+=20){
      for (int y = 0; y<height;y+=20){
        if (x == 300 || y == 280 || y == 580){
          Path p = new Path(x,y);
          p.display();
        }
      }
    }
  }
  
  void setBackground(){
    background(#98FF00);
  }
  
  void setCenter(){
    c.display();
  }
  
  void setGym(){
    g.display();
  }
  
  void setExits(){
    ex1.display();
    ex2.display();
  }
  
  void display(){
    setBackground();
    setPath();
    setCenter();
    setGym();
    setExits();
  }
}