class Gyarados extends Pokemon {

  Gyarados(String newName, int newLvl) {

    _name = newName;
    _index = 130;
    _lvl = newLvl;
    _hp = 95;
    _atk = 125;
    _def = 79;
    _spatk = 60;
    _spdef = 100;
    _speed = 81;
    _type1 = 4;
    _type2 = 10;
    atk1 = new Move( "Tackle",35,50,100,0,0,0 );
    atk2 = new Move( "Dragon Pulse",10,85,100,1,0,0 );
    atk3 = new Move( "Water Pulse",20,60,100,1,0,0 );
    atk4 = new Move( "Aqua Tail",10,90,90,0,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

}
