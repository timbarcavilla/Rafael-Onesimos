class Geodude extends Pokemon {

  Geodude(String newName, int newLvl) {

    _name = newName;
    _index = 74;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 40;
    _atk = 80;
    _def = 100;
    _spatk = 30;
    _spdef = 30;
    _speed = 20;
    _type1 = 13;
    _type2 = 5;
    atk1 = new Move(  );
    atk2 = new Move(  );
    atk3 = new Move(  );
    atk4 = null;
    hasEvo = TRUE;
    evoLvl = 25;
    evoTo = 75;
  }

}
