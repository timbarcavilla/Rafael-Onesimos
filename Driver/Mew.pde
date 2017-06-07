class Mew extends Pokemon {

  Mew(String newName, int newLvl) {

    _name = newName;
    _index = 151;
    _lvl = newLvl;
    _hp = 100;
    _atk = 100;
    _def = 100;
    _spatk = 100;
    _spdef = 100;
    _speed = 100;
    _type1 = 11;
    _type2 = 0;
    atk1 = new Move( "Pound",35,40,100,0,0,0 );
    atk2 = new Move( "Confusion",25,50,100,1,0,0 );
    atk3 = new Move( "Psychic",10,90,100,1,0,0 );
    atk4 = new Move( "Mega Punch",20,80,85,0,0,0 );
  
  }

  String toString() {
    return "Mew\n" + super.toString();
  }

}