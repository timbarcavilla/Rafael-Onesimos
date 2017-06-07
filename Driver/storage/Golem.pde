class Golem extends Pokemon {

  Golem(String newName, int newLvl) {

    _name = newName;
    _index = 76;
    _lvl = newLvl;
    _hp = 80;
    _atk = 110;
    _def = 130;
    _spatk = 55;
    _spdef = 65;
    _speed = 45;
    _type1 = 13;
    _type2 = 5;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Defense Curl",40,0,100,2,3,5 );
    atk3 = new Move( "Rock Throw",15,50,90,1,0,0 );
    atk4 = new Move( "Earthquake",10,100,100,1,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return "Golem\n" + super.toString();
  }

}
