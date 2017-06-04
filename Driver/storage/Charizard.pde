class Charizard extends Pokemon {

  Charizard(String newName, int newLvl) {

    _name = newName;
    _index = 6;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 78;
    _atk = 84;
    _def = 78;
    _spatk = 109;
    _spdef = 85;
    _speed = 100;
    _type1 = 2;
    _type2 = 10;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = FALSE;
    evoLvl = -1;
    evoTo = 0;
  }

}
