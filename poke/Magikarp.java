class Magikarp extends Pokemon {

    Magikarp(String newName, int newLvl) {

        _name = newName;
        _index = 129;
        _lvl = newLvl;
        _hp = 20;
        _atk = 10;
        _def = 55;
        _spatk = 15;
        _spdef = 20;
        _speed = 80;
        _type1 = 4;
        _type2 = 0;
        atk1 = new Move( "Splash",40,0,100,1,0,0 );
        atk2 = new Move( "null",-1,-1,-1,-1,-1,-1 );
        atk3 = new Move( "null",-1,-1,-1,-1,-1,-1 );
        atk4 = new Move( "null",-1,-1,-1,-1,-1,-1 );
        hasEvo = true;
        evoLvl = 20;
        evoTo = 130;
    }

}
