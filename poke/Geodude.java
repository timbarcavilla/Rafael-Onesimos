public class Geodude extends Pokemon {

    public Geodude(String newName, int newLvl) {

	_name = newName;
	_index = 74;
	_lvl = newLvl;
	atk1 = new Move("Tackle", 35, 50, 100, 0, 0, 0 );
	atk2 = null;
	atk3 = null;
	atk4 = null;
	
        // Pokemon( int index, String name, int lvl, Move move1, Move move2, Move move3, Move move4 )
	//  Move( String name, int pp, int dmg, int accuracy, int category, int stat, int boost )
	//super(74, "Geodude", 5, new Move("Tackle", 35, 50, 100, 0, 0, 0 ), null, null, null );

    }
}
