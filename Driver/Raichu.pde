class Raichu extends Pokemon {

  Raichu(String newName, int newLvl) {

    _name = newName;
    _index = 26;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 60;
    _atk = 90;
    _def = 55;
    _spatk = 90;
    _spdef = 80;
    _speed = 100;
    _type1 = 6;
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
