class Electabuzz extends Pokemon {

    Electabuzz(String newName, int newLvl) {

        _name = newName;
        _index = 125;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 65;
        _atk = 83;
        _def = 57;
        _spatk = 95;
        _spdef = 85;
        _speed = 105;
        _type1 = 6;
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
