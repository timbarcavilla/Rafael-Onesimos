class Raichu extends Pokemon {

  Raichu(String newName, int newLvl) {

    _name = newName;
    _index = 26;
    _lvl = newLvl;
    _hp = 60;
    _atk = 90;
    _def = 55;
    _spatk = 90;
    _spdef = 80;
    _speed = 100;
    _type1 = 6;
    _type2 = 0;
    atk1 = new Move( "Thunder",10,110,70,1,0,0 );
    atk2 = new Move( "Thunder Shock",30,40,100,1,0,0 );
    atk3 = new Move( "Thunderbolt",15,90,100,1,0,0 );
    atk4 = new Move( "Iron Tail",15,100,75,0,0,0 );
 
  }

  String toString() {
    return "Raichu\n" + super.toString();
  }

}