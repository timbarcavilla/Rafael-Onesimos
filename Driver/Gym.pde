class Gym {

  int _level;
  String _name;
  Leader _leader;
  boolean passed;

  Gym(int newLevel, String newName, String leaderName, int ego) {

    _level = newLevel;
    _name = newName;
    _leader = new Leader(leaderName, ego);
    passed = false;
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
}