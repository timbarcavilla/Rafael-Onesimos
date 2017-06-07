class Gym {

  int _level;
  int x;
  int y;
  String _name;
  Leader _leader;
  boolean passed;

  Gym(int newLevel, String newName, String leaderName, int ego, int xcor, int ycor) {

    _level = newLevel;
    _name = newName;
    _leader = new Leader(leaderName);
    passed = false;

    x = xcor;
    y = ycor;
  }

  int getLevel() { 
    return _level;
  }
  String getName() { 
    return _name;
  }
  boolean isPassed() { 
    return passed;
  }

  void battle(Player pl) {
    while (!passed) {

      pokemonPicked = false;

      Pokemon _leaderPoke;
      if (_name.equals("Allania")) {
      _leaderPoke = new Bulbasaur("bulb", 5);
      _leader.addPokemon(_leaderPoke);
      }
      if (_name.equals("Ericatonia")) {
        _leaderPoke = new Snorlax("Snorlax", 10);
        _leader.addPokemon(_leaderPoke);
      }
      if (_name.equals("Timberville")) {
        _leaderPoke = new Wartortle("Wartortle", 20);
        _leader.addPokemon(_leaderPoke);
      }
      
      println(userInt);
      println("Entering the " + _name + " gym.");

      println("My name is " + _leader.getName() + "! I'm the " + _name + " LEADER! ");

      //battle
      while (pl.hasPokemon() && _leader.hasPokemon()) {

        //index of player party
        int p = 0;
        //index of leader party
        int l = 0;
        //choice of player move
        int plMove = 0;
        //choice of opponent move
        int oppMove = 0;

        boolean plFainted = false;
        boolean oppFainted = false;


        boolean validMove = false;

        Pokemon plPoke = pl._party.get(0);
        Pokemon leaderPoke = _leader._party.get(0);

        //ask pl to put in integer until they input valid input
        while (!validMove) {
          println("\t1). "+plPoke.atk1._name);
          println("\t2). "+plPoke.atk2._name);
          println("\t3). "+plPoke.atk3._name);
          println("\t4). "+plPoke.atk4._name);
          intType = true;
          while (!doneTyping) {
            noLoop();
          }
          loop();
          doneTyping = false;
          intType = false;
          plMove = userInt;

          if (plMove >= 1 && plMove <= 4) {
            if (pl.hasPokemon()) {
              validMove = true;
            }
          } else {
            println("Please input an integer between 1-4 corresponding with the move you want to use.");
          }
        }
//////////////////ERROR SOMEWHERE AFTER THIS/////////////
        if (leaderPoke.getSpeed() > plPoke.getSpeed()) {
          oppMove = (int)(Math.random() * 4 + 1);
          if (oppMove == 1) {
            
              leaderPoke.attack1( plPoke );
            
          }
          if (oppMove == 2) {
            
              leaderPoke.attack2( plPoke );
            
          }
          if (oppMove == 3) {
            
              leaderPoke.attack3( plPoke );
            
          }
          if (oppMove == 4) {
           
              leaderPoke.attack4( plPoke );
            
          }
        

        //if your pokemon is still alive
        if (plPoke.getHp() > 0) {
          println("Your Pokemon has " + plPoke.getHp() + " HP remaining.");
          if (plMove == 1) {
            
              plPoke.attack1( plPoke );
            
          }
          if (plMove == 2) {
            
              plPoke.attack2( plPoke );
            
          }
          if (plMove == 3) {
            
              plPoke.attack3( plPoke );
            
          }
          if (plMove == 4) {
            
              plPoke.attack4( plPoke );
            
          } else {
            //player pokemon fainted
            plFainted = true;
          }
          if (leaderPoke.getHp() <= 0) {
            //_leader pokemon fainted
            oppFainted = true;
          }
        }
        }

        //if pl pokemon is faster than _leader's
        if (plPoke.getSpeed() >= leaderPoke.getSpeed()) {
          if (plMove == 1) {
            
              plPoke.attack1( plPoke );
            
          }
          if (plMove == 2) {
            
              plPoke.attack2( plPoke );
            
          }
          if (plMove == 3) {
            
              plPoke.attack3( plPoke );
            
          }
          if (plMove == 4) {
            
              plPoke.attack4( plPoke );
            
          }
        


          //if leader pokemon is still alive
          if (leaderPoke.getHp() > 0) {
            println("_leader's Pokemon has " + leaderPoke.getHp() + " remaining.");
            oppMove = (int)(Math.random() * 4 + 1);
            if (oppMove == 1) {
              
                leaderPoke.attack1( plPoke );
              
            }
            if (oppMove == 2) {
             
                leaderPoke.attack2( plPoke );
              
            }
            if (oppMove == 3) {
              
                leaderPoke.attack3( plPoke );
              
            }
            if (oppMove == 4) {
              
                leaderPoke.attack4( plPoke );
              
            }
          } 
          else {
            //_leader's pokemon fainted

            oppFainted = true;
          }

          //if pl's pokemon fainted
          if (plPoke.getHp() <= 0) {

            plFainted = false;
          }
        }
      
      

        //if pl fainted but still have healthy Pokemon
        if (plFainted == true && pl.hasPokemon()) {

          println( "Your "+ plPoke.getName() + "fainted.");
          p++;
          plPoke = pl._party.get(p);
          println("Go " + plPoke.getName());
          plFainted = false;
        }

        if (oppFainted == true && _leader.hasPokemon()) {

          println( "_leader's" + leaderPoke.getName() + "fainted." );
          l++;
          leaderPoke = _leader._party.get(l);
          println("_leader sent out his " + leaderPoke.getName());
          oppFainted = false;
        }




        if (pl.hasPokemon() && !_leader.hasPokemon()) {

          println("_leader: I took you for granted. As proof of your victory, here's the BOULDERBADGE! That is an official POKEMON LEAGUE BADGE! Its bearer's POKEMON become more powerful!");

          //add pokemon
          println("Choose a Pokemon to add to your party!");
          println("Which one will you pick?");
          ArrayList<Pokemon> choicePoke = new ArrayList<Pokemon>();
          for (int i = 0; i < 3; i++) {
            choicePoke.add(genPoke());
          }
          for (int i = 0; i < 3; i++) {
            println("\t" + (i+1) + ". " + choicePoke.get(i).getName());
          }

          while (pokemonPicked == false) {
            intType = true;
            while (!doneTyping) {
              noLoop();
            }
            loop();
            doneTyping = false;
            intType = false;
            int choice = userInt;
            Pokemon yourPokemon = choicePoke.get(choice);
            println("What name do you wish to give to your newly found Pokemon?");
            stringType = true;
            while (!doneTyping) {
              noLoop();
            }
            doneTyping = false;
            stringType = false;

            yourPokemon.setName(userStr);
            pl.addPokemon(yourPokemon);
            println("Cool! Your new Pokemon's name is " + yourPokemon.getName() + "!");
          }
          //add badge
          pl.addBadge();

          //badge has been won
          passed = true;
          break;
        }

        if (_leader.hasPokemon()) {
          println("_leader: ur a loser");
          _leader.healPokemon();
          //start over
          continue;
        }
      }//end battle loop
    }//end gym loop
  }


  void display() {
    image(gy, x, y);
  }

  Pokemon genPoke() {
    int r = (int)(Math.random() * 3);
    if (r == 0) {
      return new Bulbasaur("Bulbasaur", 5);
    } else if (r == 1) {
      return new Charmander("Charmander", 5);
    } else {
      return new Squirtle("Squirtle", 5);
    }
  }
  
  boolean checkGym(int xcor, int ycor){
    return (xcor >= x-150 && xcor <= x+150) && (ycor >= y-150 && ycor <= y+150);
  }
}