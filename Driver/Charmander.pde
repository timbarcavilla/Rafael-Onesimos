class Charmander extends Pokemon {

  Charmander(String newName, int newLvl) {

    _name = newName;
    _index = 4;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 39;
    _atk = 52;
    _def = 43;
    _spatk = 60;
    _spdef = 50;
    _speed = 65;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 16;
    evoTo = 5;
  }

}
