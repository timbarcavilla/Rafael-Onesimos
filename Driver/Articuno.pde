class Articuno extends Pokemon {

  Articuno(String newName, int newLvl) {

    _name = newName;
    _index = 144;
    _lvl = newLvl;
    _hp = 90;
    _atk = 85;
    _def = 100;
    _spatk = 95;
    _spdef = 125;
    _speed = 85;
    _type1 = 7;
    _type2 = 10;
    atk1 = new Move( "Peck",35,35,100,0,0,0 );
    atk2 = new Move( "Ice Beam",10,90,100,1,0,0 );
    atk3 = new Move( "Blizzard",5,110,70,1,0,0 );
    atk4 = new Move( "Sky Attack",5,140,90,2,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return Articuno\n + super.toString();
  }

}
