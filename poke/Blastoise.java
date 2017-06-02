class Blastoise extends Pokemon {

    Blastoise(String newName, int newLvl) {

        _name = newName;
        _index = 9;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 79;
        _atk = 83;
        _def = 100;
        _spatk = 85;
        _spdef = 105;
        _speed = 78;
        _type1 = 4;
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
