class Charmeleon extends Pokemon {

  Charmeleon(String newName, int newLvl) {

    _name = newName;
    _index = 5;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 58;
    _atk = 64;
    _def = 58;
    _spatk = 80;
    _spdef = 65;
    _speed = 80;
    _type1 = 2;
    _type2 = 0;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 36;
    evoTo = 6;
  }

}
