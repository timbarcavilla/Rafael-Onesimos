public class Bulbasaur extends Pokemon {

    public Bulbasaur() {
	
	// Pokemon( int index, String name, int lvl, Move move1, Move move2, Move move3, Move move4 )
	// Move( String name, int pp, int dmg, int accuracy, int stat, int boost )
	super( 4, "Bulbasaur", 5, new Move( "Tackle", 35, 50, 100, 0, 0 ), new Move( "Growl", 40, 0, 100, 2, 5 ), null, null );
	
    }

}
