class Squirtle extends Pokemon {

  Squirtle(String newName, int newLvl) {

    _name = newName;
    _index = 7;
    _lvl = newLvl;
    _hp = 44;
    _atk = 48;
    _def = 65;
    _spatk = 60;
    _spdef = 54;
    _speed = 43;
    _type1 = 4;
    _type2 = 0;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Bite",25,60,100,0,0,0 );
    atk3 = new Move( "Bubble",30,40,100,1,0,0 );
    atk4 = new Move( "null",-1,-1,-1,-1,-1,-1 );
    hasEvo = true;
    evoLvl = 16;
    evoTo = 8;
  }

}
