class Growlithe extends Pokemon {

  Growlithe(String newName, int newLvl) {

    _name = newName;
    _index = 58;
    _lvl = newLvl;
    _hp = 55;
    _atk = 70;
    _def = 45;
    _spatk = 70;
    _spdef = 50;
    _speed = 60;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move( "Bite",25,60,100,0,0,0 );
    atk2 = new Move( "Roar",20,0,100,2,3,5 );
    atk3 = new Move( "Ember",25,40,100,1,0,0 );
    atk4 = new Move( "Take Down",20,90,85,0,0,0 );
    hasEvo = true;
    evoLvl = 30;
    evoTo = 59;
  }

}
