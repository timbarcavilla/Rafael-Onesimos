class Allania extends Map{
  
  Allania(){
    exitX = 100;
    exitY = 0;
    gymX1 = 400;
    gymX2 = 500;
    gymY1 = 100;
    gymY1 = 200;
    centerX1 = 100;
    centerX2 = 200;
    centerY1 = 400;
    centerY2 = 500;
    gymlvl = 1;
  }
  
  void setPath(){
    for (int x = 0; x<600; x+=20){
      for (int y = 0; y<600;y+=20){
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
    d.display();
  }
  
  void setCenter(){
    Center ce = new Center(150,450);
    ce.display();
  }
  
  void setGym(){
    Gym g = new Gym(gymlvl, "Allania City Gym", "Allan Wang",1, 450,150);
    g.display();
  }
  
  void display(){
    setBackground();
    setPath();
    setDarkGrass();
    setCenter();
    setGym();
  }
}
  

  
      