class Jolteon extends Pokemon {

  Jolteon(String newName, int newLvl) {

    _name = newName;
    _index = 135;
    _lvl = newLvl;
    _hp = 65;
    _atk = 65;
    _def = 60;
    _spatk = 110;
    _spdef = 95;
    _speed = 130;
    _type1 = 6;
    _type2 = 0;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Quick Attack",30,40,100,0,0,0 );
    atk3 = new Move( "Thunder Shock",30,40,100,1,0,0 );
    atk4 = new Move( "Thunder",10,110,70,1,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return "Jolteon\n" + super.toString();
  }

}
