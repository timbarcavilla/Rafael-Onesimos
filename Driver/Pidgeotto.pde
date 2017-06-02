class Pidgeotto extends Pokemon {

  Pidgeotto(String newName, int newLvl) {

    _name = newName;
    _index = 17;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 63;
    _atk = 60;
    _def = 55;
    _spatk = 50;
    _spdef = 50;
    _speed = 71;
    _type1 = 10;
    _type2 = 1;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 36;
    evoTo = 18;
  }

}
