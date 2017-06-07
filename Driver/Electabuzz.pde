class Electabuzz extends Pokemon {

  Electabuzz(String newName, int newLvl) {

    _name = newName;
    _index = 125;
    _lvl = newLvl;
    _hp = 65;
    _atk = 83;
    _def = 57;
    _spatk = 95;
    _spdef = 85;
    _speed = 105;
    _type1 = 6;
    _type2 = 0;
    atk1 = new Move( "Quick Attack",30,40,100,0,0,0 );
    atk2 = new Move( "Leer",30,0,100,2,2,5 );
    atk3 = new Move( "Thunderbolt",15,90,100,1,0,0 );
    atk4 = new Move( "Thunder Punch",15,75,100,0,0,0 );

  }

  String toString() {
    return "Electabuzz\n" + super.toString();
  }

}