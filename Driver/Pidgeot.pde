class Pidgeot extends Pokemon {

  Pidgeot(String newName, int newLvl) {

    _name = newName;
    _index = 18;
    _lvl = newLvl;
    _hp = 83;
    _atk = 80;
    _def = 75;
    _spatk = 70;
    _spdef = 70;
    _speed = 91;
    _type1 = 10;
    _type2 = 1;
    atk1 = new Move( "Gust",35,40,100,1,0,0 );
    atk2 = new Move( "Aerial Ace",20,60,100,0,0,0 );
    atk3 = new Move( "Quick Attack",30,40,100,0,0,0 );
    atk4 = new Move( "Sky Attack",5,140,90,2,0,0 );
  
  }

  String toString() {
    return "Pidgeot\n" + super.toString();
  }

}