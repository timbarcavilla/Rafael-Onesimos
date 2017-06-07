class Pidgey extends Pokemon {

    Pidgey(String newName, int newLvl) {

        _name = newName;
        _index = 16;
        _lvl = newLvl;
        _hp = 40;
        _atk = 45;
        _def = 40;
        _spatk = 35;
        _spdef = 35;
        _speed = 56;
        _type1 = 10;
        _type2 = 1;
        atk1 = new Move( "Gust",35,40,100,1,0,0 );
        atk2 = new Move( "Tackle",35,50,100,0,0,0 );
        atk3 = new Move( "Quick Attack",30,40,100,0,0,0 );
        atk4 = new Move( "Wing Attack",35,60,100,0,0,0 );
        hasEvo = true;
        evoLvl = 18;
        evoTo = 17;
    }

}
