PImage center;
PImage dGrass;
PImage pt;
PImage gy;

boolean pokemonPicked;
boolean puzzleSolved;

boolean doneTyping;

boolean stringType;
boolean intType;
boolean dialogue;
boolean buttonClicked;

Map m1,m2,m3;

Pokemon yourPokemon;

String userStr = "";
int userInt = 0;

PFont f;
int rectX,rectY,rectSizeX,rectSizeY;
color rectC;

Map maps;

void setup() {
  size(600, 600);
  center = loadImage("center.png");
  dGrass = loadImage("darkgrass.jpg");
  pt = loadImage("path.jpg");
  gy = loadImage("gym.jpg");
  pokemonPicked = false;
  puzzleSolved = false;
  doneTyping = false;
  stringType = false;
  intType = false;
  dialogue = false;
  buttonClicked = false;
  f = createFont("Times New Roman",16,true);
  rectX = 200;
  rectY = 100;
  rectSizeX = 200;
  rectSizeY = 100;
  rectC = 0;
  
  m1 = new Allania();
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
void draw() {
  menu();
  background(0);
  //Intro-------------------
  println("Hello there! Welcome to the world of POKEMON! My name is OAK. People call me the POKEMON PROF!");
  println("What is your name?");
  m1.display();
  /*
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
  */
}

void load(int[][] stuff){
  for (int x = 0; x< stuff.length; x+=30){
    for (int y = 0; y< stuff[0].length; y+=30){
      if (stuff[x][y] == 0){
        Path p = new Path(x,y);
        p.display();
      }
    }
  }
  image(center,100,100);
  DarkGrass d1 = new DarkGrass(400,200);
  d1.display();
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
  else if (dialogue){
    if (keyCode == ENTER){
      dialogue = false;
    }
  }
}