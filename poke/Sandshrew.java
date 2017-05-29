public Sandshrew extends Pokemon {

    public Sandshrew(String newName, int newLvl) {

	_name = newName;
	_lvl = newLvl;
	_index = 27;
	atk1 = new Move( "Scratch", 35, 40, 100, 0, 0, 0);
	atk2 = null;
	atk3 = null;
	atk4 = null;
	// Pokemon( int index, String name, int lvl, Move move1, Move move2, Move move3, Move move4 )
	//  Move( String name, int pp, int dmg, int accuracy, int category, int stat, int boost )
	//super( 27, "Sandshrew", 5, new Move( "Scratch", 35, 40, 100, 0, 0, 0), null, null, null);
    }
}
