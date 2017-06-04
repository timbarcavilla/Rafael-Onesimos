class Articuno extends Pokemon {

  Articuno(String newName, int newLvl) {

    _name = newName;
    _index = 144;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 90;
    _atk = 85;
    _def = 100;
    _spatk = 95;
    _spdef = 125;
    _speed = 85;
    _type1 = 7;
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
