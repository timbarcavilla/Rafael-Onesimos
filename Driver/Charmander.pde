class Charmander extends Pokemon {

  Charmander(String newName, int newLvl) {

    _name = newName;
    _index = 4;
    _lvl = newLvl;
    _hp = 39;
    _atk = 52;
    _def = 43;
    _spatk = 60;
    _spdef = 50;
    _speed = 65;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move( "Scratch",35,40,100,0,0,0 );
    atk2 = new Move( "Growl",40,0,100,2,3,5 );
    atk3 = new Move( "Ember",25,40,100,1,0,0 );
    atk4 = new Move( "null",-1,-1,-1,-1,-1,-1 );
    hasEvo = true;
    evoLvl = 16;
    evoTo = 5;
  }

  String toString() {
    return "Charmander\n" + super.toString();
  }

}
