class Graveler extends Pokemon {

    Graveler(String newName, int newLvl) {

        _name = newName;
        _index = 75;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 55;
        _atk = 95;
        _def = 115;
        _spatk = 45;
        _spdef = 45;
        _speed = 35;
        _type1 = 13;
        _type2 = 5;
        atk1 = new Move(  );
        atk2 = new Move(  );
        atk3 = new Move(  );
        atk4 = null;
        hasEvo = TRUE;
        evoLvl = 40;
        evoTo = 75;
    }

}
