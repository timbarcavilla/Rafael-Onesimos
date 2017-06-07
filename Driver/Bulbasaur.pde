class Bulbasaur extends Pokemon {

  Bulbasaur(String newName, int newLvl) {

    _name = newName;
    _index = 1;
    _lvl = newLvl;
    _hp = 45;
    _atk = 49;
    _def = 49;
    _spatk = 65;
    _spdef = 65;
    _speed = 45;
    _type1 = 3;
    _type2 = 9;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Growl",40,0,100,2,3,5 );
    atk3 = new Move( "Vine Whip",25,45,100,0,0,0 );
    atk4 = new Move( "null",-1,-1,-1,-1,-1,-1 );
    hasEvo = true;
    evoLvl = 16;
    evoTo = 2;
  }

  String toString() {
    return "Bulbasaur\n" + super.toString();
  }

}
