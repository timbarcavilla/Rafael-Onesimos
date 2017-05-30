class Bulbasaur extends Pokemon {

  Bulbasaur(String newName, int newLvl) {

    _name = newName;
    _index = 1;
    _lvl = newLvl;
    atk1 = new Move( "Tackle", 35, 50, 100, 0, 0, 0 );
    atk2 = new Move( "Growl", 40, 0, 100, 0, 2, 5 );
    atk3 = new Move("Vine Whip", 25, 45, 100, 0, 0, 0);
    atk4 = null;
    // Pokemon( int index, String name, int lvl, Move move1, Move move2, Move move3, Move move4 )
    //  Move( String name, int pp, int dmg, int accuracy, int category, int stat, int boost )
    //super( 1, "Bulbasaur", 5, new Move( "Tackle", 35, 50, 100, 0, 0, 0 ), new Move( "Growl", 40, 0, 100, 0, 2, 5 ), new Move("Vine Whip", 25, 45, 100, 0, 0, 0), null );
    hasEvo = true;
    evoLvl = 16;
  }

}