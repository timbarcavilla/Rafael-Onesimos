class Golem extends Pokemon {

  Golem(String newName, int newLvl) {

    _name = newName;
    _index = 76;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 80;
    _atk = 110;
    _def = 130;
    _spatk = 55;
    _spdef = 65;
    _speed = 45;
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
