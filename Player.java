import java.lang.ArrayPriorityQueue;
import userInput.Keyboard;
import poke.Pokemon;

public class Player extends Trainer{

    private int numBadges;
    private ArrayPriorityQueue<Pokemon> _pokedex; // Change type of pokedex

    public Player(String newName) {
	numBadges = 0;
	_pokedex = new ArrayPriorityQueue<Pokemon>(); // Change type.
	_name = newName;
	_party = new ArrayList<Pokemon>(); // Change this too.
    }

    // ACCESSORS AND MUTATORS

    public int getBadges() { return numBadges; }

    public Pokemon getPokedex(int index){
	for (Pokemon each : _pokedex){
	    if (each.getIndex() == index)
		return each;
	}
	return null;
    }

    // To be called when you beat a gym.
    public void addBadge() { numBadges += 1; }

    public void addPokemon( Pokemon p ) {

      //if party is not full
	if ( _party.size() < 6 )
	    _party.add( p );

      //if party is already full
	else {
	    boolean pokeRemoved = false;
	    String RemPokemon;
	    System.out.print("What pokemon would you like to release back into the wild?");
      //show party
	    showParty;
	    String RemPokemon = Keyboard.readString();
	    while (!pokeRemoved){
		int i = 0;
		while (i < _party.size()){
		    if (_party.get(i).getName().equals(RemPokemon)){
			_party.remove(i);
			break;
		    }
		    else
			i++;
		}
    //invalid input for Pokemon name
		if (i == _party.size())
		    System.out.println("Invalid Input");
		else
		    pokeRemoved = true;
	    }

	  _party.add(p);

	}

    }

    //add to player pokedex
    public void addPokedex(Pokemon p){
	_pokedex.add(p);
    }

    //check if party has Pokemon
    public boolean hasPokemon() {

	for ( Pokemon p : _party ) {
	    if ( p.getHealth() > 0 )
		return true;
	}
	return false;
    }

    //heal Pokemon
    public void healPokemon(){
      for (Pokemon p : _party) {
        p.heal();
      }
    }

    public void showParty(){
      System.out.println(_party.toString());
    }



}
