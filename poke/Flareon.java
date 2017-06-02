class Flareon extends Pokemon {

    Flareon(String newName, int newLvl) {

        _name = newName;
        _index = 136;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 65;
        _atk = 130;
        _def = 60;
        _spatk = 95;
        _spdef = 110;
        _speed = 65;
        _type1 = 2;
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
