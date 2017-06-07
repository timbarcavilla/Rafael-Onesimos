class Vaporeon extends Pokemon {

  Vaporeon(String newName, int newLvl) {

    _name = newName;
    _index = 134;
    _lvl = newLvl;
    _hp = 130;
    _atk = 65;
    _def = 60;
    _spatk = 110;
    _spdef = 95;
    _speed = 65;
    _type1 = 4;
    _type2 = 0;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Quick Attack",30,40,100,0,0,0 );
    atk3 = new Move( "Water Gun",25,40,100,1,0,0 );
    atk4 = new Move( "Hydro Pump",5,110,80,1,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return "Vaporeon\n" + super.toString();
  }

}
