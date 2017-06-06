abstract class Map{
  
  int exitX,exitY,exit2X,exit2Y;
  int gymX1,gymY1,gymX2,gymY2;
  int centerX1,centerY1,centerX2,centerY2;
  int gymlvl;
  Exit ex1,ex2;
  Center c;
  
  abstract void setPath();
  abstract void setBackground();
  abstract void setDarkGrass();
  abstract void setCenter();
  abstract void setGym();
  abstract void display();
  abstract void setExits();
}
  