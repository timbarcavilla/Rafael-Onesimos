class Snorlax extends Pokemon {

    Snorlax(String newName, int newLvl) {

        _name = newName;
        _index = 143;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 160;
        _atk = 110;
        _def = 65;
        _spatk = 65;
        _spdef = 110;
        _speed = 30;
        _type1 = 1;
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
