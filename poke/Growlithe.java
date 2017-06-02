class Growlithe extends Pokemon {

    Growlithe(String newName, int newLvl) {

        _name = newName;
        _index = 58;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = 55;
        _atk = 70;
        _def = 45;
        _spatk = 70;
        _spdef = 50;
        _speed = 60;
        _type1 = 2;
        _type2 = 0;
        atk1 = new Move(  );
        atk2 = new Move(  );
        atk3 = new Move(  );
        atk4 = null;
        hasEvo = TRUE;
        evoLvl = 30;
        evoTo = 59;
    }

}
