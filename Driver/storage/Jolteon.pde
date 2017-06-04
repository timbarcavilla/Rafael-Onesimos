class Jolteon extends Pokemon {

  Jolteon(String newName, int newLvl) {

    _name = newName;
    _index = 135;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 65;
    _atk = 65;
    _def = 60;
    _spatk = 110;
    _spdef = 95;
    _speed = 130;
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
