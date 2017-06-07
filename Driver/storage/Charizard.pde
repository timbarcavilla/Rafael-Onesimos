class Charizard extends Pokemon {

  Charizard(String newName, int newLvl) {

    _name = newName;
    _index = 6;
    _lvl = newLvl;
    _hp = 78;
    _atk = 84;
    _def = 78;
    _spatk = 109;
    _spdef = 85;
    _speed = 100;
    _type1 = 2;
    _type2 = 10;
    atk1 = new Move( "Scratch",35,40,100,0,0,0 );
    atk2 = new Move( "Flamethrower",15,90,100,1,0,0 );
    atk3 = new Move( "Ember",25,40,100,1,0,0 );
    atk4 = new Move( "Blast Burn",5,150,90,1,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

}
