class Graveler extends Pokemon {

  Graveler(String newName, int newLvl) {

    _name = newName;
    _index = 75;
    _lvl = newLvl;
    _hp = 55;
    _atk = 95;
    _def = 115;
    _spatk = 45;
    _spdef = 45;
    _speed = 35;
    _type1 = 13;
    _type2 = 5;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Defense Curl",40,0,100,2,3,5 );
    atk3 = new Move( "Rock Throw",15,50,90,1,0,0 );
    atk4 = new Move( "Earthquake",10,100,100,1,0,0 );
    hasEvo = true;
    evoLvl = 40;
    evoTo = 75;
  }

  String toString() {
    return "Graveler\n" + super.toString();
  }

}
