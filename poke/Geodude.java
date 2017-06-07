class Geodude extends Pokemon {

    Geodude(String newName, int newLvl) {

        _name = newName;
        _index = 74;
        _lvl = newLvl;
        _hp = 40;
        _atk = 80;
        _def = 100;
        _spatk = 30;
        _spdef = 30;
        _speed = 20;
        _type1 = 13;
        _type2 = 5;
        atk1 = new Move( "Tackle",35,50,100,0,0,0 );
        atk2 = new Move( "Defense Curl",40,0,100,2,3,5 );
        atk3 = new Move( "Rock Throw",15,50,90,1,0,0 );
        atk4 = new Move( "Harden",30,0,100,2,3,5 );
        hasEvo = true;
        evoLvl = 25;
        evoTo = 75;
    }

}
