class Pidgey extends Pokemon {

  Pidgey(String newName, int newLvl) {

    _name = newName;
    _index = 16;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 40;
    _atk = 45;
    _def = 40;
    _spatk = 35;
    _spdef = 35;
    _speed = 56;
    _type1 = 10;
    _type2 = 1;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 18;
    evoTo = 17;
  }

}
