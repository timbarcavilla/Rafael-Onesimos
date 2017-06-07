class Flareon extends Pokemon {

  Flareon(String newName, int newLvl) {

    _name = newName;
    _index = 136;
    _lvl = newLvl;
    _hp = 65;
    _atk = 130;
    _def = 60;
    _spatk = 95;
    _spdef = 110;
    _speed = 65;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Quick Attack",30,40,100,0,0,0 );
    atk3 = new Move( "Ember",25,40,100,1,0,0 );
    atk4 = new Move( "Flamethrower",15,90,100,1,0,0 );
 
  }

  String toString() {
    return "Flareon\n" + super.toString();
  }

}