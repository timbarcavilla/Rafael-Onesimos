PImage center;
PImage dGrass;
PImage pt;
PImage gy;

boolean pokemonPicked;
boolean puzzleSolved;

boolean doneTyping;

boolean stringType;
boolean intType;
boolean canMove;
boolean buttonClicked;
boolean doneIntro;

Map m1,m2,m3;

Pokemon yourPokemon;
Player user;

String userStr = "";
int userInt = 0;

PFont f;
int rectX,rectY,rectSizeX,rectSizeY;
color rectC;

Map currCity;

void setup() {
  size(1200, 650);
  center = loadImage("center.png");
  dGrass = loadImage("darkgrass.jpg");
  pt = loadImage("path.jpg");
  gy = loadImage("gym.jpg");
  pokemonPicked = false;
  puzzleSolved = false;
  doneTyping = false;
  stringType = false;
  intType = false;
  canMove = false;
  buttonClicked = false;
  doneIntro = false;
  f = createFont("Times New Roman",16,true);
  rectX = 200;
  rectY = 100;
  rectSizeX = 200;
  rectSizeY = 100;
  rectC = 0;

  m1 = new Allania();
  m2 = new Ericatonia();

  currCity = m1;
}

void menu(){
  background(0);
  fill(rectC);
  stroke(255);
  rect(rectX,rectY,rectSizeX,rectSizeY);
  fill(255);
  text("PLAY",280,150);
  while (!buttonClicked){
    noLoop();/*
    if (mouseX >= 200 && mouseX <= 400 && mouseY >= 100 && mouseY <= 200){
      noStroke();
    }
    */
  }
}

void intro(){
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

  user = new Player(userStr,300,580,30);
  doneIntro = true;
}
void draw() {
  while(!buttonClicked){
    menu();
  }
  currCity.display();
  while (!doneIntro){
    intro();
  }
  canMove = true;
  user.move();
  user.display();
  println(user.x);
  println(user.y);
  /*
  //Intro-------------------
  println("Hello there! Welcome to the world of POKEMON! My name is OAK. People call me the POKEMON PROF!");
  println("What is your name?");
  m1.display();

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

  user = new Player(userStr,300,580,30);
  user.move();
  user.display();
  */

/*
  //Choose a Pokemon to add

  Pokemon yourPokemon;
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
  */

/*
//Allania Gym
while (badgeWon == false){

    pokemonPicked = false;

    Leader Allan = new Leader(Allan);
    Pokemon AllanPoke;
    AllanPoke = new Snorlax("Snorlax" , 5);
    Allan.addPokemon(Snorlax);

    System.out.println("Entering the Allania gym.");

    /*puzzle
    while (puzzleSolved == false){

    }
    */

    System.out.println("My name is Allan! I'm the ALLANIA LEADER! I believe in rock hard defense and determination! That's why my POKEMON are all the rock-type! Do you still want to challenge me? Fine then! Show me your best!");

    //battle
    while (user.hasPokemon() && Allan.hasPokemon()){

      //index of player party
      int p = 0;
      //index of leader party
      int l = 0;
      //choice of player move
      int userMove = 0;
      //choice of opponent move
      int oppMove = 0;

      boolean userFainted = false;
      boolean oppFainted = false;


    boolean validMove = false;

    Pokemon userPoke = user._party.get(0);
    Pokemon leaderPoke = Allan._party.get(0);

    //ask user to put in integer until they input valid input
    while (!validMove){
      userMove = Keyboard.readInt();

      if (playerMove >= 1 && playerMove <= 4)   {
        if (userMove != 5 || user.hasPokemon()){
          validMove = true;
        }
      }

      else {
        System.out.println("Please input an integer between 1-4 corresponding with the move you want to use.");
      }
    }

    if (leaderPoke.getSpeed() > userPoke.getSpeed()){
      oppMove = (int)(Math.random() * 4 + 1);
      if (oppMove == 1){
        if (leaderPoke.atk1().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk1( userPoke );
        }
      }
      if (oppMove == 2){
        if (leaderPoke.atk2().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk2( userPoke );
        }
      }
      if (oppMove == 3){
        if (leaderPoke.atk3().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk3( userPoke );
        }
      }
      if (oppMove == 4){
        if (leaderPoke.atk4().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk4( userPoke );
        }
      }

    }

    //if your pokemon is still alive
    if (userPoke.getHp() > 0){
      System.out.println("Your Pokemon has " + userPoke.getHp() + " HP remaining.");
      if (userMove == 1){
        if (userPoke.atk1().equals(null)){
          System.out.println("Pick another move.");
        }
        else {
          userPoke.atk1( userPoke );
        }
      }
      if (userMove == 2){
        if (userPoke.atk2().equals(null)){
          System.out.println("Pick another move.");
        }
        else {
          userPoke.atk2( userPoke );
        }
      }
      if (userMove == 3){
        if (userPoke.atk3().equals(null)){
          System.out.println("Pick another move.");
        }
        else {
          userPoke.atk3( userPoke );
        }
      }
      if (userMove == 4){
        if (userPoke.atk4().equals(null)){
          System.out.println("Pick another move.");
        }
        else {
          userPoke.atk4( userPoke );
        }
      }


    else {
      //player pokemon fainted
       userFainted = true;

    }
    if (leaderPoke.getHp() <= 0){
      //Allan pokemon fainted
      oppFainted = true;

    }
}

//if user pokemon is faster than Allan's
    if (userPoke.getSpeed() >= leaderPoke.getSpeed()){
  if (userMove == 1){
    if (userPoke.atk1().equals(null)){
      System.out.println("Pick another move.");
    }
    else {
      userPoke.atk1( userPoke );
    }
      }
      if (userMove == 2){
        if (userPoke.atk2().equals(null)){
          System.out.println("Pick another move.");
        }
        else {
          userPoke.atk2( userPoke );
        }
      }
      if (userMove == 3){
        if (userPoke.atk3().equals(null)){
          System.out.println("Pick another move.");
        }
        else {
          userPoke.atk3( userPoke );
        }
      }
      if (userMove == 4){
        if (userPoke.atk4().equals(null)){
          System.out.println("Pick another move.");
        }
        else {
          userPoke.atk4( userPoke );
        }
      }


    //if leader pokemon is still alive
    if (leaderPoke.getHp() > 0){
  System.out.println("Allan's Pokemon has " + leaderPoke.getHp() + " remaining.");
   oppMove = (int)(Math.random() * 4 + 1);
      if (oppMove == 1){
        if (leaderPoke.atk1().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk1( userPoke );
        }
      }
      if (oppMove == 2){
        if (leaderPoke.atk2().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk2( userPoke );
        }
      }
      if (oppMove == 3){
        if (leaderPoke.atk3().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk3( userPoke );
        }
      }
      if (oppMove == 4){
        if (leaderPoke.atk4().equals(null)){
          oppMove = (int)(Math.random() * 4 + 1);
        }
        else {
          leaderPoke.atk4( userPoke );
        }
      }
    }

    else {
  //Allan's pokemon fainted

  oppFainted = true;

    }

    //if user's pokemon fainted
    if (userPoke.getHp() <= 0){

    userFainted = false;

    }

  }

  //if user fainted but still have healthy Pokemon
  if (userFainted == true && user.hasPokemon()){

    System.out.println( "Your "+ userPoke.getName() + "fainted.");
    p++;
    userPoke = user._party.get(p);
    System.out.println("Go " + userPoke.getName());
    userFainted = false;

  }

  if (oppFainted == true && Allan.hasPokemon()){

    System.out.println( "Allan's" + leaderPoke.getName() + "fainted." );
    l++;
    leaderPoke = Allan._party.get(l);
    System.out.println("Allan sent out his " + leaderPoke.getName());
    oppFainted = false;

  }




    if (user.hasPokemon() && !Allan.hasPokemon()){

  System.out.println("Allan: I took you for granted. As proof of your victory, here's the BOULDERBADGE! That is an official POKEMON LEAGUE BADGE! Its bearer's POKEMON become more powerful!");

  //heal all pokemon
  user.healPokemon();
  System.out.println("All your Pokemon have been healed.");

  //add pokemon
  System.out.println("Choose a Pokemon to add to your party!");
      System.out.println("Which one will you pick?");
  System.out.println("1. Pidgey");
  System.out.println("2. Onix");
  System.out.println("3. Snorlax");


while (pokemonPicked = false){
  int choice = Keyboard.readInt();
  if (choice == 1){
System.out.println("What name do you want to give to your Pidgey?");
String newName = Keyboard.readString();
yourPokemon = new Pidgey(newName,5);
  }
  else if (choice  == 2){
System.out.println("What name do you want to give to your Onix?");
String newName = Keyboard.readString();
yourPokemon = new Onix(newName,5);
  }
  else if (choice == 3){
System.out.println("What name do you want to give to your Snorlax?");
String newName = Keyboard.readString();
yourPokemon = new Onix(newName,5);
  }
  else{
System.out.println("Invalid Choice.");
choice = 0;
  }

user.addPokemon(yourPokemon);
System.out.println("Cool! Your new Pokemon's name is " + yourPokemon.getName() + "!");
}
  //add badge
  user.addBadge();

  //badge has been won
  badgeWon = true;
  break;

    }

    if (Allan.hasPokemon()){
  System.out.println("Allan: ur a loser");
  user.healPokemon();
  Allan.healPokemon();
  //start over
  continue;

    }

}//end battle loop
}//end gym loop

//End Allania Gym
}
*/

void mousePressed(){
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 100 && mouseY <= 200){
    buttonClicked = true;
  }
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
  else if (canMove){
   user.setMove(keyCode,true);
  }
  if (keyCode == ENTER && currCity.ex1.checkExit(user.x,user.y)){
    if (currCity.equals(m1)){
      currCity = m2;
    }
  }
}

void keyReleased(){
  if (canMove){
  user.setMove(keyCode,false);
  }
}
