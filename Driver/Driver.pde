
boolean pokemonPicked;
boolean badgeWon;
boolean puzzleSolved;

boolean doneTyping;

boolean stringType;
boolean intType;

Pokemon yourPokemon;

String userStr = "";
int userInt = 0;

void setup() {
  size(600, 600);
  pokemonPicked = false;
  badgeWon = false;
  puzzleSolved = false;
  doneTyping = false;
  stringType = false;
  intType = false;
}

void draw() {

  background(0);
  //Intro-------------------
  println("Hello there! Welcome to the world of POKEMON! My name is OAK. People call me the POKEMON PROF!");
  println("What is your name?");
  stringType = true;
  while (!doneTyping) {
    noLoop();
  }
  loop();
  stringType = false;
  doneTyping = false;
  println("Right! Your name is " + userStr + "!");
  println(userStr + "! Your very own Pokemon legend is about to unfold! A world of dreams and adventures with Pokemon awaits! Let's go!");
  //End intro---------------

  Player user = new Player(userStr);

  //Choose a Pokemon to add
  while (pokemonPicked == false) {
    println("Now " + userStr + " , what Pokemon do you want?");
    println("\t1. Bulbasaur. A Grass and Poison type.");
    println("\t2. Charmander. A Fire type.");
    println("\t3. Squirtle. A Water type");
  
    intType = true;
    while (!doneTyping) {
      noLoop();
    }
    loop();
    intType = false;
    doneTyping = false;
    if (userInt == 1) {
      println("What name do you want to give to your Bulbasaur?");
      stringType = true;
      userStr = "";
      while (!doneTyping) {
        noLoop();
      }
      loop();
      stringType = false;
      doneTyping = false;
      yourPokemon = new Bulbasaur(userStr, 5);
      user.addPokemon(yourPokemon);
      pokemonPicked = true;
    } else if (userInt  == 2) {
      println("What name do you want to give to your Charmander?");
      stringType = true;
      userStr = "";
      while (!doneTyping) {
        noLoop();
      }
      loop();
      stringType = false;
      doneTyping = false;
      yourPokemon = new Charmander(userStr, 5);
      user.addPokemon(yourPokemon);
      pokemonPicked = true;
    } else if (userInt == 3) {
      println("What name do you want to give to your Squirtle?");
      stringType = true;
      userStr = "";
      while (!doneTyping) {
        noLoop();
      }
      loop();
      stringType = false;
      doneTyping = false;
      yourPokemon = new Squirtle(userStr, 5);
      user.addPokemon(yourPokemon);
      pokemonPicked = true;
    } else {
      println("Invalid Choice." + userInt);
    }
  }
  println("Cool! Your pokemon's name is " + yourPokemon.getName() + "! Welcome!");
  noLoop();
}
/*
  //Pewter City Gym
 while (badgeWon == false){
 
 Leader Brock = new Leader(Brock);
 
 System.out.println("Entering the Pewter City gym.");
 
 //puzzle
 while (puzzleSolved == false){
 //enter puzzle stuffs
 }
 
 System.out.println("I'm BROCK! I'm PEWTER's GYM LEADER! I believe in rock hard
 defense and determination! That's why my POKEMON are all the
 rock-type! Do you still want to challenge me? Fine then!
 Show me your best!");
 
 //battle
 while (user.hasPokemon() && Brock.hasPokemon()){
 //enter battle stuffs
 }
 
 if (user.hasPokemon()){
 
 System.out.println("Brock: I took you for granted. As proof of your victory, here's the
 BOULDERBADGE! That's an official POKEMON LEAGUE BADGE!
 Its bearer's POKEMON become more powerful!");
 
 //heal all pokemon
 user.healPokemon();
 System.outprintln("All your Pokemon have been healed.");
 
 //add pokemon
 System.out.println("Choose a Pokemon to add to your party!")
 System.out.println("Which one will you pick?");
 System.out.println("1. Sandshrew");
 System.out.println("2. Onix");
 println("3. Geodude");
 String newPoke = Keyboard.readString();
 user.addPokemon(newPoke);
 
 //add badge
 user.addBadge();
 
 //badge has been won
 badgeWon = true;
 break;
 
 }
 
 if (Brock.hasPokemon()){
 println("Brock: ur a loser");
 user.healPokemon();
 //start over
 continue;
 
 }
 
 }
 //End Pewter City Gym
 
 //Start next Gym
 badgeWon = false;
 puzzleSolved = false;
 while (badgeWon == false){
 //enter information for next gym
 
 }
 */

void keyPressed() {

  if (stringType) {
    if (keyCode == BACKSPACE) {
      if (userStr.length() > 0) {
        userStr = userStr.substring(0, userStr.length()-1);
      }
    } else if (keyCode == DELETE) {
      userStr = "";
    } else if (keyCode == ENTER) {
      doneTyping = true;
    } else if (keyCode != CODED) {
      userStr += key;
    }
  } else if (intType) {

    if (keyCode == DELETE) {
      userInt = 0;
    } else if (keyCode == ENTER) {
      doneTyping = true;
    } else if (key >= '0' && key <= '9') {
      userInt = key - 48;
    }
  }
}