class Arcanine extends Pokemon {

  Arcanine(String newName, int newLvl) {

    _name = newName;
    _index = 59;
    _lvl = newLvl;
    _hp = 90;
    _atk = 110;
    _def = 80;
    _spatk = 100;
    _spdef = 80;
    _speed = 95;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move( "Ember",25,40,100,1,0,0 );
    atk2 = new Move( "Fire Blast",5,110,85,1,0,0 );
    atk3 = new Move( "Roar",20,0,100,2,3,5 );
    atk4 = new Move( "Take Down",20,90,85,0,0,0 );
    hasEvo = false;
    evoLvl = -1;
    evoTo = 0;
  }

}
