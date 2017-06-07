class Magmar extends Pokemon {

  Magmar(String newName, int newLvl) {

    _name = newName;
    _index = 126;
    _lvl = newLvl;
    _hp = 65;
    _atk = 95;
    _def = 57;
    _spatk = 100;
    _spdef = 85;
    _speed = 93;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move( "Ember",25,40,100,1,0,0 );
    atk2 = new Move( "Leer",30,0,100,2,2,5 );
    atk3 = new Move( "Flamethrower",15,90,100,1,0,0 );
    atk4 = new Move( "Fire Punch",15,75,100,0,0,0 );
 
  }

  String toString() {
    return "Magmar\n" + super.toString();
  }

}