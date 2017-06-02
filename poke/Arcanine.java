class Arcanine extends Pokemon {

    Arcanine(String newName, int newLvl) {

        _name = newName;
        _index = 59;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 90;
        _atk = 110;
        _def = 80;
        _spatk = 100;
        _spdef = 80;
        _speed = 95;
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
