class Mew extends Pokemon {

  Mew(String newName, int newLvl) {

    _name = newName;
    _index = 151;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 100;
    _atk = 100;
    _def = 100;
    _spatk = 100;
    _spdef = 100;
    _speed = 100;
    _type1 = 11;
    _type2 = 0;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = FALSE;
    evoLvl = -1;
    evoTo = 0;
  }

}
