class Pikachu extends Pokemon {

  Pikachu(String newName, int newLvl) {

    _name = newName;
    _index = 25;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 35;
    _atk = 55;
    _def = 30;
    _spatk = 50;
    _spdef = 40;
    _speed = 90;
    _type1 = 6;
    _type2 = 0;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 30;
    evoTo = 26;
  }

}
