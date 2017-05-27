import cs1.Keyboard;
import java.util.Scanner;
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

   //Choose a Pokemon to add
   while (pokemonPicked == false){
     System.out.println("Now " + name + " , what Pokemon do you want?");
     System.out.println("1. Bulbasaur. A Grass and Poison type.");
     System.out.println("2. Charmander. A Fire type.");
     System.out.println("3. Squirtle. A Water type");

     String yourPokemon = Keyboard.readString();

     user.addPokemon(yourPokemon);
     pokemonPicked = true;
   }

   //Pewter City Gym
   while (badgeWon == false){

   Leader Brock = new Leader(Brock);

    System.out.println("Entering the Pewter City gym");

    //puzzle
    while (puzzleSolved == false){
      //enter puzzle stuffs
    }

    //battle
    while (user.hasPokemon() && Brock.hasPokemon()){
      //enter battle stuffs
    }

    if (user.hasPokemon()){

      //heal all pokemon
      user.healPokemon();

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
      System.out.println("ur a loser");
      user.healPokemon();
     //start over
     continue;

    }

   }
   //End Pewter City Gym

   //Start next Gym
   badgeWon = false;
   while (badgeWon == false){
     //enter information for next gym

   }


   }

}
