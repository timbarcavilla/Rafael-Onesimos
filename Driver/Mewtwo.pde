class Mewtwo extends Pokemon {

  Mewtwo(String newName, int newLvl) {

    _name = newName;
    _index = 150;
    _lvl = newLvl;
    _hp = 106;
    _atk = 110;
    _def = 90;
    _spatk = 154;
    _spdef = 90;
    _speed = 130;
    _type1 = 11;
    _type2 = 0;
    atk1 = new Move( "Confusion",25,50,100,1,0,0 );
    atk2 = new Move( "Aura Sphere",20,80,100,1,0,0 );
    atk3 = new Move( "Psychic",10,90,100,1,0,0 );
    atk4 = new Move( "Thunder",10,110,70,1,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

  String toString() {
    return Mewtwo\n + super.toString();
  }

}
