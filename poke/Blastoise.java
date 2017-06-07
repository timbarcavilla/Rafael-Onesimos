class Blastoise extends Pokemon {

    Blastoise(String newName, int newLvl) {

        _name = newName;
        _index = 9;
        _lvl = newLvl;
        _hp = 79;
        _atk = 83;
        _def = 100;
        _spatk = 85;
        _spdef = 105;
        _speed = 78;
        _type1 = 4;
        _type2 = 0;
        atk1 = new Move( "Tackle",35,50,100,0,0,0 );
        atk2 = new Move( "Bubble",30,40,100,1,0,0 );
        atk3 = new Move( "Tail Whip",30,0,100,2,2,5 );
        atk4 = new Move( "Hydro Cannon",5,150,90,1,0,0 );
        hasEvo = false;
        evoLvl = -1;
        evoTo = 0;
    }

}
