class name extends Pokemon {

    name(String newName, int newLvl) {

        _name = newName;
        _index = index;
        _lvl = newLvl;
        // _moveset = [INSERT MOVESET HERE];
        _hp = hp;
        _atk = atk;
        _def = def;
        _spatk = spatk;
        _spdef = spdef;
        _speed = speed;
        _type1 = type1;
        _type2 = type2;
        atk1 = new Move(  );
        atk2 = new Move(  );
        atk3 = new Move(  );
        atk4 = null;
        hasEvo = hasEvo;
        evoLvl = evoLvl;
        evoTo = evolvesTo;
    }

}
