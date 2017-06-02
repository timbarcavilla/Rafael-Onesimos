class Bulbasaur extends Pokemon {

  Bulbasaur(String newName, int newLvl) {

    _name = newName;
    _index = 1;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 45;
    _atk = 49;
    _def = 49;
    _spatk = 65;
    _spdef = 65;
    _speed = 45;
    _type1 = 3;
    _type2 = 9;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 16;
    evoTo = 2;
  }

}
