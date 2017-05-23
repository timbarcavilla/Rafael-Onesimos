import java.util.ArrayPriorityQueue

public class Player {

    private int numBadges;
    private ___ pokedex; // Change type of pokedex
    

    ArrayPriorityQueue<Pokemon> party; // Change to working Priority Queue class

    public Player() {
	numBadges = 0;
	pokedex = _____; // Change type.
	party = new ArrayPriorityQueue<Pokemon>(); // Change this too.
    }

    // ACCESSORS AND MUTATORS

    public getBadges() { return numBadges; }

    // To be called when you beat a gym.
    public addBadge() { numBadges += 1; }

    public Pokemon getPokemon( Pokemon p ) {

	if ( party.size() < 6 ) { party.add( p ); }

	else {
	    // Replace a chosen pokemon with p.  Use keyboard input or sth idk.
	}
	
    }
    
    public boolean hasPokemon() {
	
	boolean retBool = false;
	
	for ( Pokemon p : party ) {
	    if ( p.getHealth() > 0 ) {
		retBool = true;
	    }
	}
	return retBool;
    }

    

}
