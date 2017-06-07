class Pidgeotto extends Pokemon {

  Pidgeotto(String newName, int newLvl) {

    _name = newName;
    _index = 17;
    _lvl = newLvl;
    _hp = 63;
    _atk = 60;
    _def = 55;
    _spatk = 50;
    _spdef = 50;
    _speed = 71;
    _type1 = 10;
    _type2 = 1;
    atk1 = new Move( "Gust",35,40,100,1,0,0 );
    atk2 = new Move( "Tackle",35,50,100,0,0,0 );
    atk3 = new Move( "Quick Attack",30,40,100,0,0,0 );
    atk4 = new Move( "Wing Attack",35,60,100,0,0,0 );
    hasEvo = true;
    evoLvl = 36;
    evoTo = 18;
  }

  String toString() {
    return Pidgeotto\n + super.toString();
  }

}
