class Pidgeot extends Pokemon {

  Pidgeot(String newName, int newLvl) {

    _name = newName;
    _index = 18;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 83;
    _atk = 80;
    _def = 75;
    _spatk = 70;
    _spdef = 70;
    _speed = 91;
    _type1 = 10;
    _type2 = 1;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = FALSE;
    evoLvl = -1;
    evoTo = 0;
  }

}
