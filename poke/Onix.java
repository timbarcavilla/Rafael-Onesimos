class Onix extends Pokemon {

    Onix(String newName, int newLvl) {

        _name = newName;
        _index = 95;
        _lvl = newLvl;
        _hp = 35;
        _atk = 45;
        _def = 160;
        _spatk = 30;
        _spdef = 45;
        _speed = 70;
        _type1 = 13;
        _type2 = 5;
        atk1 = new Move( "Tackle",35,50,100,0,0,0 );
        atk2 = new Move( "Screech",40,0,85,2,2,10 );
        atk3 = new Move( "Iron Tail",15,100,75,0,0,0 );
        atk4 = new Move( "Slam",20,80,75,0,0,0 );
        hasEvo = false;
        evoLvl = -1;
        evoTo = 0;
    }

}
