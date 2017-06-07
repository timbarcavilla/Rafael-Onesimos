class Zapdos extends Pokemon {

  Zapdos(String newName, int newLvl) {

    _name = newName;
    _index = 145;
    _lvl = newLvl;
    _hp = 90;
    _atk = 90;
    _def = 85;
    _spatk = 125;
    _spdef = 90;
    _speed = 100;
    _type1 = 6;
    _type2 = 10;
    atk1 = new Move( "Thunder Shock",30,40,100,1,0,0 );
    atk2 = new Move( "Drill Peck",35,35,100,0,0,0 );
    atk3 = new Move( "Thunder",10,110,70,1,0,0 );
    atk4 = new Move( "Sky Attack",5,140,90,2,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return "Zapdos\n" + super.toString();
  }

}
