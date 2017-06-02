class Moltres extends Pokemon {

  Moltres(String newName, int newLvl) {

    _name = newName;
    _index = 146;
    _lvl = newLvl;
    // _moveset = [INSERT MOVESET HERE];
    _hp = 90;
    _atk = 100;
    _def = 90;
    _spatk = 125;
    _spdef = 85;
    _speed = 90;
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
