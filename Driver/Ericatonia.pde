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
    ex1 = new Exit(200,330,0,50);
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
  
  void setDarkGrass(){
    DarkGrass d = new DarkGrass(580,380);
    DarkGrass d2 = new DarkGrass(580,350);
    d.display();
    d2.display();
  }
  
  void setCenter(){
    Center ce = new Center(330,420);
    ce.display();
  }
  
  void setGym(){
    Gym g = new Gym(gymlvl, "Allania City Gym", "Allan Wang",1, 150,150);
    g.display();
  }
  
  void setExits(){
    ex1.display();
  }
  
  void display(){
    setBackground();
    setPath();
    setDarkGrass();
    setCenter();
    setGym();
    setExits();
  }
}