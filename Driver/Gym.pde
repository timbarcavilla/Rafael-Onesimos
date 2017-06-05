class Gym {

  int _level;
  int x;
  int y;
  String _name;
  Leader _leader;
  boolean passed;

  Gym(int newLevel, String newName, String leaderName, int ego, int xcor, int ycor) {

    _level = newLevel;
    _name = newName;
    _leader = new Leader(leaderName, ego);
    passed = false;
    
    x = xcor;
    y = ycor;
  }

  int getLevel() { 
    return _level;
  }
  String getName() { 
    return _name;
  }
  boolean isPassed() { 
    return passed;
  }
  
  void display(){
    image(gy,x,y);
  }
}