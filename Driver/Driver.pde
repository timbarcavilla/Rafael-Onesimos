
boolean pokemonPicked;
boolean badgeWon;
boolean puzzleSolved;

boolean doneTyping;

boolean stringType;
boolean intType;
boolean dialogue;

Pokemon yourPokemon;

String userStr = "";
int userInt = 0;

PFont f;

void setup() {
  size(600, 600);
  pokemonPicked = false;
  badgeWon = false;
  puzzleSolved = false;
  doneTyping = false;
  stringType = false;
  intType = false;
  dialogue = false;
  f = createFont("Arial",16,true);
}

void draw() {

  background(255);
  //Intro-------------------
  textFont(f,16);
  fill(0);
  text("Hello there! Welcome to the world of POKEMON! My name is OAK. People call me the POKEMON PROF!",10,100,300,300);
  text("What is your name?",30,300);
  frameRate(3);
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


void keyPressed() {

  if (stringType) {
    if (keyCode == BACKSPACE) {
      if (userStr.length() > 0) {
        userStr = userStr.substring(0, userStr.length()-1);
      }
    } else if (keyCode == DELETE) {
      userStr = "";
    } else if (keyCode == ENTER || keyCode == RETURN) {
      doneTyping = true;
    } else if (keyCode != CODED) {
      userStr += key;
    }
  } else if (intType) {

    if (keyCode == DELETE) {
      userInt = 0;
    } else if (keyCode == ENTER || keyCode == RETURN) {
      doneTyping = true;
    } else if (key >= '0' && key <= '9') {
      userInt = key - 48;
    }
  }
  else if (dialogue){
    if (keyCode == ENTER){
      dialogue = false;
    }
  }
}