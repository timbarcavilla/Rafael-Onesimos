class Eevee extends Pokemon {

  Eevee(String newName, int newLvl) {

    _name = newName;
    _index = 133;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 55;
    _atk = 55;
    _def = 50;
    _spatk = 45;
    _spdef = 65;
    _speed = 55;
    _type1 = 1;
    _type2 = 0;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 20;
    evoTo = 134;
  }

}
