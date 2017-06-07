class Ivysaur extends Pokemon {

  Ivysaur(String newName, int newLvl) {

    _name = newName;
    _index = 2;
    _lvl = newLvl;
    _hp = 60;
    _atk = 62;
    _def = 63;
    _spatk = 80;
    _spdef = 80;
    _speed = 60;
    _type1 = 3;
    _type2 = 9;
    atk1 = new Move( "Vine Whip",25,45,100,0,0,0 );
    atk2 = new Move( "Tackle",35,50,100,0,0,0 );
    atk3 = new Move( "Growl",40,0,100,2,3,5 );
    atk4 = new Move( "Razor Leaf",25,55,95,1,0,0 );
    hasEvo = true;
    evoLvl = 32;
    evoTo = 3;
  }

}
