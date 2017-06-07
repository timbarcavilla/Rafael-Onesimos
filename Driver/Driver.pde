PImage center;
PImage pt;
PImage gy;
PImage pl;

boolean pokemonPicked, puzzleSolved, doneTyping, stringType, intType, canMove, buttonClicked, doneIntro;

Map m1, m2, m3;

Player user;

String userStr = "";
int userInt = 0;

int rectX, rectY, rectSizeX, rectSizeY;
color rectC;

Map currCity;

void setup() {
  size(700, 650);

  center = loadImage("center.png");
  pt = loadImage("path.jpg");
  gy = loadImage("gym.png");
  pl = loadImage("player.png");
  pokemonPicked = false;
  puzzleSolved = false;
  doneTyping = false;
  stringType = false;
  intType = false;
  canMove = false;
  buttonClicked = false;
  doneIntro = false;

  m1 = new Allania();
  m2 = new Ericatonia();
  m3 = new Timberville();

  currCity = m1;
}



void draw() {

  while (!buttonClicked) {
    menu();
  }


  currCity.display();
  while (!doneIntro) {
    intro();
  }
  canMove = true;
  user.move();
  user.display();

  
}


void mousePressed() {
  if (mouseX >= 200 && mouseX <= 400 && mouseY >= 100 && mouseY <= 200) {
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
  } else if (canMove) {
    user.setMove(keyCode, true);
  }
  if (keyCode == ENTER && !stringType && !intType) {
    if ((currCity.ex1.checkExit(user.x, user.y) || currCity.ex2.checkExit(user.x, user.y))) {
      if (currCity.equals(m1)) {
        currCity = m2;
        user.x = currCity.ex2.posX;
        user.y = currCity.ex2.posY;
      } else if (currCity.equals(m2)) {
        if (currCity.ex1.checkExit(user.x, user.y)) {
          currCity = m3;
        } else {
          currCity = m1;
        }
        user.x = currCity.ex1.posX;
        user.y = currCity.ex1.posY;
      } else {
        currCity = m2;
        user.x = currCity.ex1.posX;
        user.y = currCity.ex1.posY;
      }
    } else if (currCity.c.checkCenter(user.x, user.y)) {
      user.healPokemon();
      println("Your pokemon are fully healed!");
    } else if (currCity.g.checkGym(user.x, user.y)) {
      currCity.g.battle(user);
    }
  }
  if (keyCode == 'R' && !stringType && !intType) {
    background(0);
    int i = 0;
    for (Pokemon each : user._party) {
      fill(255);
      textSize(12);
      text(each.toString(), 300, 20+i);
      i+=100;
    }
    noLoop();
  }
}

void keyReleased() {
  if (canMove) {
    user.setMove(keyCode, false);
  }
  if (keyCode == 'R') {
    loop();
    currCity.display();
    user.move();
    user.display();
  }
}

void menu() {
  background(0);
  fill(0);
  stroke(255);
  rect(200, 100, 200, 100);
  fill(255);
  textSize(32);
  text("PLAY", 280, 150);
  while (!buttonClicked) {
    noLoop();
    if (mouseX >= 200 && mouseX <= 400 && mouseY >= 100 && mouseY <= 200) {
      noStroke();
    }
  }
}


void intro() {
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

  user = new Player(userStr, 300, 580, 30);


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
      user.addPokemon(new Bulbasaur(userStr, 5));
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
      user.addPokemon(new Charmander(userStr, 5));
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
      user.addPokemon(new Squirtle(userStr, 5));
      pokemonPicked = true;
    } else {
      println("Invalid Choice." + userInt);
    }
  }
  println("Cool! Your pokemon's name is " + user.getFirst().getName() + "! Welcome!");
  user.addPokedex(user.getFirst());

  doneIntro = true;
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