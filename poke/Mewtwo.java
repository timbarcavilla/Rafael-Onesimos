class Mewtwo extends Pokemon {

    Mewtwo(String newName, int newLvl) {

        _name = newName;
        _index = 150;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 106;
        _atk = 110;
        _def = 90;
        _spatk = 154;
        _spdef = 90;
        _speed = 130;
        _type1 = 11;
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
