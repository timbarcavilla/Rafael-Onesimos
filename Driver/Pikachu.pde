class Pikachu extends Pokemon {

  Pikachu(String newName, int newLvl) {

    _name = newName;
    _index = 25;
    _lvl = newLvl;
    _hp = 35;
    _atk = 55;
    _def = 30;
    _spatk = 50;
    _spdef = 40;
    _speed = 90;
    _type1 = 6;
    _type2 = 0;
    atk1 = new Move( "Growl",40,0,100,2,3,5 );
    atk2 = new Move( "Thunder Shock",30,40,100,1,0,0 );
    atk3 = new Move( "Thunderbolt",15,90,100,1,0,0 );
    atk4 = new Move( "Iron Tail",15,100,75,0,0,0 );
    hasEvo = true;
    evoLvl = 30;
    evoTo = 26;
  }

  String toString() {
    return Pikachu\n + super.toString();
  }

}
