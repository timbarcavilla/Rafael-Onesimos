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
}

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