class Onix extends Pokemon {

  Onix(String newName, int newLvl) {

    _name = newName;
    _index = 95;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 35;
    _atk = 45;
    _def = 160;
    _spatk = 30;
    _spdef = 45;
    _speed = 70;
    _type1 = 13;
    _type2 = 5;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = FALSE;
    evoLvl = -1;
    evoTo = 0;
  }

}
