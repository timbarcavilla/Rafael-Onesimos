class Ivysaur extends Pokemon {

  Ivysaur(String newName, int newLvl) {

    _name = newName;
    _index = 2;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 60;
    _atk = 62;
    _def = 63;
    _spatk = 80;
    _spdef = 80;
    _speed = 60;
    _type1 = 3;
    _type2 = 9;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 32;
    evoTo = 3;
  }

}
