import java.util.PriorityQueue;

class Player extends Trainer {

  int numBadges;
  PriorityQueue<Pokemon> _pokedex; // Change type of pokedex
  boolean doneTyping;

  Player(String newName) {
    numBadges = 0;
    _pokedex = new PriorityQueue<Pokemon>(); // Change type.
    _name = newName;
    _party = new ArrayList<Pokemon>(); // Change this too.
    doneTyping = false;
  }

  // ACCESSORS AND MUTATORS

  int getBadges() { 
    return numBadges;
  }

  Pokemon getPokedex(int index) {
    for (Pokemon each : _pokedex) {
      if (each.getIndex() == index)
        return each;
    }
    return null;
  }

  // To be called when you beat a gym.
  void addBadge() { 
    numBadges += 1;
  }

  void addPokemon( Pokemon p ) {

    //if party is not full
    if ( _party.size() < 6 )
      _party.add( p );

    //if party is already full
    else {
      boolean pokeRemoved = false;
      String remPokemon = "";
      System.out.print("What pokemon would you like to release back into the wild?");
      //show party
      showParty();
      while (!doneTyping) {
        if (keyCode == ENTER && remPokemon != "") {
          doneTyping = true;
        } else if (key != CODED) {
          remPokemon += (char)(key);
        }
      }
      doneTyping = false;
      while (!pokeRemoved) {
        int i = 0;
        while (i < _party.size()) {
          if (_party.get(i).getName().equals(remPokemon)) {
            _party.remove(i);
            break;
          } else
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
  void addPokedex(Pokemon p) {
    _pokedex.add(p);
  }

  //check if party has Pokemon
  boolean hasPokemon() {

    for ( Pokemon p : _party ) {
      if ( p.getHealth() > 0 )
        return true;
    }
    return false;
  }

  //heal Pokemon
  void healPokemon() {
    for (Pokemon p : _party) {
      p.heal();
    }
  }

  void showParty() {
    println(_party.toString());
  }
}