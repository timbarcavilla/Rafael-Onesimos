class Gyarados extends Pokemon {

    Gyarados(String newName, int newLvl) {

        _name = newName;
        _index = 130;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 95;
        _atk = 125;
        _def = 79;
        _spatk = 60;
        _spdef = 100;
        _speed = 81;
        _type1 = 4;
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
