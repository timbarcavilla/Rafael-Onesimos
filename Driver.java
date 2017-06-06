import userInput.Keyboard;
import java.io.File;
import java.io.FileNotFoundException;

public class Driver {

    public static boolean pokemonPicked = false;
    public static boolean badgeWon = false;
    public static boolean puzzleSolved = false;


    public static void main(String[] args){

	//Intro-------------------
	System.out.println("Hello there! Welcome to the world of POKEMON! My name is OAK!
            People call me the POKEMON PROF!");
	System.out.println("What is your name?")
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
	}
	user.addPokemon(yourPokemon);
	}

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
      Pokemon leaderPoke = Brock._party.get(0);

      //ask user to put in integer until they input valid input
      while (!validMove){
        userMove = Keyboard.readInt();

        if (playerMove >= 1 && playerMove <= 4)   {
          if (userMove != 5 || user.hasPokemon()){
            validMove = true;
          }
        }

        else {
          System.out.println("Please input an integer between 1-4 corresponding with the move you want to use.")
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
        System.out.println("Your Pokemon has " + userPoke.getHp() + " HP remaining.")
        if (userMove == 1){
          if (userPoke.atk1().equals(null)){
            System.out.println("Pick another move.")
          }
          else {
            userPoke.atk1( userPoke );
          }
        }
        if (userMove == 2){
          if (userPoke.atk2().equals(null)){
            System.out.println("Pick another move.")
          }
          else {
            userPoke.atk2( userPoke );
          }
        }
        if (userMove == 3){
          if (userPoke.atk3().equals(null)){
            System.out.println("Pick another move.")
          }
          else {
            userPoke.atk3( userPoke );
          }
        }
        if (userMove == 4){
          if (userPoke.atk4().equals(null)){
            System.out.println("Pick another move.")
          }
          else {
            userPoke.atk4( userPoke );
          }
        }

      }
      else {
        //player pokemon fainted
	       userFainted = true;

      }
      if (leaderPoke.getHp() <= 0){
        //brock pokemon fainted
        oppFainted = true;

      }


      if (userPoke.getSpeed() >= leaderPoke.getSpeed()){
	  if (userMove == 1){
      if (userPoke.atk1().equals(null)){
        System.out.println("Pick another move.")
      }
      else {
        userPoke.atk1( userPoke );
      }
        }
        if (userMove == 2){
          if (userPoke.atk2().equals(null)){
            System.out.println("Pick another move.")
          }
          else {
            userPoke.atk2( userPoke );
          }
        }
        if (userMove == 3){
          if (userPoke.atk3().equals(null)){
            System.out.println("Pick another move.")
          }
          else {
            userPoke.atk3( userPoke );
          }
        }
        if (userMove == 4){
          if (userPoke.atk4().equals(null)){
            System.out.println("Pick another move.")
          }
          else {
            userPoke.atk4( userPoke );
          }
        }
	    }

      //if leader pokemon is still alive
      if (leaderPoke.getHp() > 0){
	  System.out.println("Brock's Pokemon has " + leaderPoke.getHp() + " remaining.");
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
	  //brock's pokemon fainted

    oppFainted = true;

      }

      //if user's pokemon fainted
      if (userPoke.getHp() <= 0){

      userFainted = false;

      }




	    if (user.hasPokemon()){

		System.out.println("Brock: I took you for granted. As proof of your victory, here's the
               BOULDERBADGE! That is an official POKEMON LEAGUE BADGE!
               Its bearer's POKEMON become more powerful!");

		//heal all pokemon
		user.healPokemon();
		System.out.println("All your Pokemon have been healed.");

		//add pokemon
		System.out.println("Choose a Pokemon to add to your party!")
		    System.out.println("Which one will you pick?");
		System.out.println("1. Sandshrew");
		System.out.println("2. Onix");
		System.out.println("3. Geodude");
		String newPoke = Keyboard.readString();
		user.addPokemon(newPoke);

		//add badge
		user.addBadge();

		//badge has been won
		badgeWon = true;
		break;

	    }

	    if (Brock.hasPokemon()){
		System.out.println("Brock: ur a loser");
		user.healPokemon();
		Brock.healPokemon();
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


    }

}
