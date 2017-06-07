class Charmander extends Pokemon {

  Charmander(String newName, int newLvl) {

    _name = newName;
    _index = 4;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 39;
    _health = _hp;
    _atk = 52;
    _def = 43;
    _spatk = 60;
    _spdef = 50;
    _speed = 65;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move( "Scratch",35,40,100,0,2,0 );
    atk2 = new Move( "Fire Fang",15,65,95,0,5,0);
    atk3 = new Move( "Ember",25,40,100,1,5,0 );
    atk4 = new Move( "Flame Burst",20,70,100,1,5,0);
    
  }

}