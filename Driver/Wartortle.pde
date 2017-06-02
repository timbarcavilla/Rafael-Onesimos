class Wartortle extends Pokemon {

  Wartortle(String newName, int newLvl) {

    _name = newName;
    _index = 8;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 59;
    _atk = 63;
    _def = 80;
    _spatk = 65;
    _spdef = 80;
    _speed = 58;
    _type1 = 4;
    _type2 = 0;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 36;
    evoTo = 9;
  }

}
