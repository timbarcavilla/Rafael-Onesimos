class Venusaur extends Pokemon {

  Venusaur(String newName, int newLvl) {

    _name = newName;
    _index = 3;
    _lvl = newLvl;
    _hp = 80;
    _atk = 82;
    _def = 83;
    _spatk = 100;
    _spdef = 100;
    _speed = 80;
    _type1 = 3;
    _type2 = 9;
    atk1 = new Move( "Razor Leaf",25,55,95,1,0,0 );
    atk2 = new Move( "Tackle",35,50,100,0,0,0 );
    atk3 = new Move( "Vine Whip",25,45,100,0,0,0 );
    atk4 = new Move( "Frenzy Plant",5,150,90,1,0,0 );
   
  }

  String toString() {
    return "Venusaur\n" + super.toString();
  }

}