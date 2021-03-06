import userInput.Keyboard;
import java.io.File;
import java.io.FileNotFoundException;

public class Driver {

    public static boolean pokemonPicked = false;
    public static boolean badgeWon = false;
    public static boolean puzzleSolved = false;


    public static void main(String[] args){

	//Intro-------------------
	System.out.println("Hello there! Welcome to the world of POKEMON! My name is OAK! People call me the POKEMON PROF!");
	System.out.println("What is your name?");
	    String name = Keyboard.readString();
	System.out.println("Right! Your name is " + name + "!");
	System.out.println(name + "! Your very own Pokemon legend is about to unfold! A world of dreams and adventures with Pokemon awaits! Let's go!");
	//End intro---------------

	Player user = new Player(name);
	Pokemon yourPokemon;

	//Choose a Pokemon to add
	while (pokemonPicked == false){
	    System.out.println("Now " + name + " , what Pokemon do you want?");
	    System.out.println("\t1. Bulbasaur. A Grass and Poison type.");
	    System.out.println("\t2. Charmander. A Fire type.");
	    System.out.println("\t3. Squirtle. A Water type");

	    int choice = Keyboard.readInt();
	    if (choice == 1){
		System.out.println("What name do you want to give to your Bulbasaur?");
		String newName = Keyboard.readString();
		yourPokemon = new Bulbasaur(newName,5);
		pokemonPicked = true;
	    }
	    else if (choice  == 2){
		System.out.println("What name do you want to give to your Charmander?");
		String newName = Keyboard.readString();
		yourPokemon = new Charmander(newName,5);
		pokemonPicked = true;
	    }
	    else if (choice == 3){
		System.out.println("What name do you want to give to your Squirtle?");
		String newName = Keyboard.readString();
		yourPokemon = new Squirtle(newName,5);
		pokemonPicked = true;
	    }
	    else{
		System.out.println("Invalid Choice.");
		choice = 0;
	    }

	user.addPokemon(yourPokemon);
	}

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


	//Start next Gym
	badgeWon = false;
	puzzleSolved = false;
  //Ericatonia Gym
	while (badgeWon == false){

      pokemonPicked = false;

	    Leader Eric = new Leader(Eric);
      Pokemon EricPoke1;
      Pokemon EricPoke2;
      EricPoke1 = new Pikachu("Pikachu" , 5);
      EricPoke2 = new Wartortle("Wartortle", 10);
      Eric.addPokemon(Pikachu);
      Eric.addPokemon(Wartortle);

	    System.out.println("Entering the Ericatonia gym.");

	    /*puzzle
	    while (puzzleSolved == false){

	    }
      */

	    System.out.println("My name is Eric! I'm the Ericatonia LEADER! ");

	    //battle
	    while (user.hasPokemon() && Eric.hasPokemon()){

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
      Pokemon leaderPoke = Eric._party.get(0);

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
        //Eric pokemon fainted
        oppFainted = true;

      }
}

  //if user pokemon is faster than Eric's
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
	  System.out.println("Eric's Pokemon has " + leaderPoke.getHp() + " remaining.");
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
	  //Eric's pokemon fainted

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

    if (oppFainted == true && Eric.hasPokemon()){

      System.out.println( "Eric's" + leaderPoke.getName() + "fainted." );
      l++;
      leaderPoke = Eric._party.get(l);
      System.out.println("Eric sent out his " + leaderPoke.getName());
      oppFainted = false;

    }




	    if (user.hasPokemon() && !Eric.hasPokemon()){

		System.out.println("Eric: I took you for granted. As proof of your victory, here's the BOULDERBADGE! That is an official POKEMON LEAGUE BADGE! Its bearer's POKEMON become more powerful!");

		//heal all pokemon
		user.healPokemon();
		System.out.println("All your Pokemon have been healed.");

		//add pokemon
		System.out.println("Choose a Pokemon to add to your party!");
		    System.out.println("Which one will you pick?");
		System.out.println("1. Eevee");
		System.out.println("2. Pikachu");
		System.out.println("3. Magikarp");


while (pokemonPicked = false){
    int choice = Keyboard.readInt();
    if (choice == 1){
  System.out.println("What name do you want to give to your Pidgey?");
  String newName = Keyboard.readString();
  yourPokemon = new Eevee(newName,5);
    }
    else if (choice  == 2){
  System.out.println("What name do you want to give to your Onix?");
  String newName = Keyboard.readString();
  yourPokemon = new Pikachu(newName,5);
    }
    else if (choice == 3){
  System.out.println("What name do you want to give to your Snorlax?");
  String newName = Keyboard.readString();
  yourPokemon = new Magikarp(newName,5);
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

	    if (Eric.hasPokemon()){
    System.out.println("All your Pokemon have fainted!");
		user.healPokemon();
		Eric.healPokemon();
		//start over
		continue;

	    }

	}//end battle loop
}//end gym loop

	//End Ericatonia Gym

  //Start next Gym
	badgeWon = false;
	puzzleSolved = false;
  //Timberville
	while (badgeWon == false){

      pokemonPicked = false;

	    Leader Tim = new Leader(Tim);
      Pokemon TimPoke1;
      Pokemon TimPoke2;
      Pokemon TimPoke3;
      TimPoke1 = new Pidgeotto("Pidgeotto" , 10);
      TimPoke2 = new Vaporeon("Vaporeon", 15);
      TimPoke3 = new Arcanine("Arcanine", 20);
      Tim.addPokemon(Pidgeotto);
      Tim.addPokemon(Vaporeon);
      Tim.addPokemon(Arcanine);

	    System.out.println("Entering the Timberville gym.");

	    /*puzzle
	    while (puzzleSolved == false){

	    }
      */

	    System.out.println("My name is Tim! I'm the Timberville LEADER! ");

	    //battle
	    while (user.hasPokemon() && Tim.hasPokemon()){

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
      Pokemon leaderPoke = Tim._party.get(0);

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
        //Tim's pokemon fainted
        oppFainted = true;

      }
}

  //if user pokemon is faster than Tim's
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
	  System.out.println("Tim's Pokemon has " + leaderPoke.getHp() + " remaining.");
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
	  //Tim's pokemon fainted

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

    if (oppFainted == true && Tim.hasPokemon()){

      System.out.println( "Tim's" + leaderPoke.getName() + "fainted." );
      l++;
      leaderPoke = Eric._party.get(l);
      System.out.println("Tim sent out his " + leaderPoke.getName());
      oppFainted = false;

    }




	    if (user.hasPokemon() && !Tim.hasPokemon()){

		System.out.println("Tim: I took you for granted. As proof of your victory, here's the BOULDERBADGE! That is an official POKEMON LEAGUE BADGE! Its bearer's POKEMON become more powerful!");

		//heal all pokemon
		user.healPokemon();
		System.out.println("All your Pokemon have been healed.");

		//add pokemon
		System.out.println("Choose a Pokemon to add to your party!");
		    System.out.println("Which one will you pick?");
		System.out.println("1. Growlithe");
		System.out.println("2. Electabuzz");
		System.out.println("3. Ivysaur");


while (pokemonPicked = false){
    int choice = Keyboard.readInt();
    if (choice == 1){
  System.out.println("What name do you want to give to your Pidgey?");
  String newName = Keyboard.readString();
  yourPokemon = new Growlithe(newName,10);
    }
    else if (choice  == 2){
  System.out.println("What name do you want to give to your Onix?");
  String newName = Keyboard.readString();
  yourPokemon = new Electabuzz(newName,10);
    }
    else if (choice == 3){
  System.out.println("What name do you want to give to your Snorlax?");
  String newName = Keyboard.readString();
  yourPokemon = new Ivysaur(newName,10);
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

	    if (Tim.hasPokemon()){
    System.out.println("All your Pokemon have fainted!");
		user.healPokemon();
		Eric.healPokemon();
		//start over
		continue;

	    }

	}//end battle loop
}//end gym loop

	//End Timberville Gym

  System.out.println("Congratulations for earning all three gym badges, " + user.getName() +"!").
  System.out.println("We hope to see more of you in this wonderful world of POKEMON");


}//end newgame


  }//end class
