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

    System.out.println("My name is Allan! I'm the ALLANIA LEADER! ");

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
yourPokemon = new Snorlax(newName,5);
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
