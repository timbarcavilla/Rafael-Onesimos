import java.util.PriorityQueue;

class Player extends Trainer {

  int numBadges;
  PriorityQueue<Pokemon> _pokedex; // Change type of pokedex
  boolean doneTyping, goUp, goDown, goLeft, goRight;
  int x, y, d;

  Player(String newName, int xcor, int ycor, int diameter) {
    numBadges = 0;
    _pokedex = new PriorityQueue<Pokemon>(); // Change type.
    _name = newName;
    _party = new ArrayList<Pokemon>(); // Change this too.
    doneTyping = false;
    x = xcor;
    y = ycor;
    d = diameter;
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

  void display() {
    fill(#16E6F0);
    ellipse(x, y, d, d);
  }

  int convert(boolean boo) {
    if (boo) {
      return 1;
    }
    return 0;
  }

  void move() {

    x = constrain(x+10*(convert(goRight)-convert(goLeft)), d/2, width-(d/2));
    y = constrain(y+10*(convert(goDown)-convert(goUp)), d/2, width-(d/2));
  }

  boolean setMove(int board, boolean boo) {

    if (board == 'W' || board == UP) {
      goUp = boo;
      return goUp;
    } else if (board == 'S' || board == DOWN) {
      goDown = boo;
      return goDown;
    } else if (board == 'A' || board == LEFT) {
      goLeft = boo;
      return goLeft;
    } else if (board == 'D' || board == RIGHT) {
      goRight = boo;
      return goRight;
    }
    return boo;
  }
}