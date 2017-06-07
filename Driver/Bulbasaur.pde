class Bulbasaur extends Pokemon {

  Bulbasaur(String newName, int newLvl) {

    _name = newName;
    _index = 1;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 45;
    _health = _hp;
    _atk = 49;
    _def = 49;
    _spatk = 65;
    _spdef = 65;
    _speed = 45;
    _type1 = 3;
    _type2 = 9;
    atk1 = new Move( "Vine Whip",25,45,100,0,5,0 );
    atk2 = new Move( "Tackle",35,40,100,0,2,0 );
    atk3 = new Move( "Razor Leaf",25,55,95,0,5,0 );
    atk4 = new Move( "Facade",20,70,100,0,2,0);
   
  }

}