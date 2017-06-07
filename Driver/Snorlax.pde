class Snorlax extends Pokemon {

  Snorlax(String newName, int newLvl) {

    _name = newName;
    _index = 143;
    _lvl = newLvl;
    _hp = 160;
    _atk = 110;
    _def = 65;
    _spatk = 65;
    _spdef = 110;
    _speed = 30;
    _type1 = 1;
    _type2 = 0;
    atk1 = new Move( "Headbutt",15,70,100,0,0,0 );
    atk2 = new Move( "Amnesia",20,0,100,2,4,10 );
    atk3 = new Move( "Take Down",20,90,85,0,0,0 );
    atk4 = new Move( "Earthquake",10,100,100,1,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return Snorlax\n + super.toString();
  }

}
