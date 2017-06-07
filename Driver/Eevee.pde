class Eevee extends Pokemon {

  Eevee(String newName, int newLvl) {

    _name = newName;
    _index = 133;
    _lvl = newLvl;
    _hp = 55;
    _atk = 55;
    _def = 50;
    _spatk = 45;
    _spdef = 65;
    _speed = 55;
    _type1 = 1;
    _type2 = 0;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Bite",25,60,100,0,0,0 );
    atk3 = new Move( "Quick Attack",30,40,100,0,0,0 );
    atk4 = new Move( "null",-1,-1,-1,-1,-1,-1 );
    hasEvo = true;
    evoLvl = 20;
    evoTo = 134;
  }

  String toString() {
    return "Eevee\n" + super.toString();
  }

}
