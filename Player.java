import java.util.ArrayPriorityQueue
import java.util.Scanner;

public class Player {

    private int numBadges;
    private ___ pokedex; // Change type of pokedex
    

    ArrayPriorityQueue<Pokemon> party; // Change to working Priority Queue class

    public Player() {
	numBadges = 0;
	pokedex = _____; // Change type.
	party = new ArrayList<Pokemon>(); // Change this too.
    }

    // ACCESSORS AND MUTATORS

    public getBadges() { return numBadges; }

    // To be called when you beat a gym.
    public addBadge() { numBadges += 1; }

    public Pokemon getPokemon( Pokemon p ) {

	if ( party.size() < 6 ) { party.add( p ); }

	else {
	    Scanner user_input = new Scanner(System.in);

	    String RemPokemon;
	    System.out.print("What pokemon would you like to release back into the wild?");
	    String RemPokemon = user_input.next();
	    for (int i=0; i<party.size(); i++){
		if (party.get(i).getName().equals(RemPokemon)){
		    party.remove(i);
		}
	    }
	    party.add(p);
		        
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
