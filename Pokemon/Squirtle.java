public class Squirtle extends Pokemon {

    public Squirtle() {
	
	// Pokemon( int index, String name, int lvl, Move move1, Move move2, Move move3, Move move4 )
	//  Move( String name, int pp, int dmg, int accuracy, int category, int stat, int boost )
	super( 7, "Squirtle", 5, new Move( "Tackle", 35, 50, 100, 0, 0, 0 ), new Move( "Tail Whip", 30, 0, 100, 0, 1, 5 ), null, null );
	
    }

}
