class Charmeleon extends Pokemon {

  Charmeleon(String newName, int newLvl) {

    _name = newName;
    _index = 5;
    _lvl = newLvl;
    _hp = 58;
    _atk = 64;
    _def = 58;
    _spatk = 80;
    _spdef = 65;
    _speed = 80;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move( "Scratch",35,40,100,0,0,0 );
    atk2 = new Move( "Growl",40,0,100,2,3,5 );
    atk3 = new Move( "Ember",25,40,100,1,0,0 );
    atk4 = new Move( "Fire Spin",15,35,85,1,0,0 );
    hasEvo = true;
    evoLvl = 36;
    evoTo = 6;
  }

  String toString() {
    return Charmeleon\n + super.toString();
  }

}
