class Wartortle extends Pokemon {

  Wartortle(String newName, int newLvl) {

    _name = newName;
    _index = 8;
    _lvl = newLvl;
    _hp = 59;
    _atk = 63;
    _def = 80;
    _spatk = 65;
    _spdef = 80;
    _speed = 58;
    _type1 = 4;
    _type2 = 0;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Bubble",30,40,100,1,0,0 );
    atk3 = new Move( "Bite",25,60,100,0,0,0 );
    atk4 = new Move( "Water Gun",25,40,100,1,0,0 );
    hasEvo = true;
    evoLvl = 36;
    evoTo = 9;
  }

  String toString() {
    return "Wartortle\n" + super.toString();
  }

}
