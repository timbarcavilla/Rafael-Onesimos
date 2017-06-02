class Magikarp extends Pokemon {

    Magikarp(String newName, int newLvl) {

        _name = newName;
        _index = 129;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 20;
        _atk = 10;
        _def = 55;
        _spatk = 15;
        _spdef = 20;
        _speed = 80;
        _type1 = 4;
        _type2 = 0;
        atk1 = new Move(  );
        atk2 = new Move(  );
        atk3 = new Move(  );
        atk4 = null;
        hasEvo = TRUE;
        evoLvl = 20;
        evoTo = 130;
    }

}
