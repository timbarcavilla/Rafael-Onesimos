class Moltres extends Pokemon {

  Moltres(String newName, int newLvl) {

    _name = newName;
    _index = 146;
    _lvl = newLvl;
    _hp = 90;
    _atk = 100;
    _def = 90;
    _spatk = 125;
    _spdef = 85;
    _speed = 90;
    _type1 = 2;
    _type2 = 10;
    atk1 = new Move( "Peck",35,35,100,0,0,0 );
    atk2 = new Move( "Fire Spin",15,35,85,1,0,0 );
    atk3 = new Move( "Fire Blast",5,110,85,1,0,0 );
    atk4 = new Move( "Sky Attack",5,140,90,2,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return "Moltres\n" + super.toString();
  }

}
