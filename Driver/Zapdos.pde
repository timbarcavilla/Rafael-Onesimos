class Zapdos extends Pokemon {

  Zapdos(String newName, int newLvl) {

    _name = newName;
    _index = 145;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 90;
    _atk = 90;
    _def = 85;
    _spatk = 125;
    _spdef = 90;
    _speed = 100;
    _type1 = 6;
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
