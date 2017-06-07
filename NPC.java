public class NPC {

    int _town;
    
    public NPC() {
	_town = 0;
    }

    public NPC( int town ) {
	_town = town;
    }

    public String talk() {

	if ( _town == 0 ) return "Hello traveler! Welcome to the world of Pokemon!";
	else if ( _town == 1 ) return "Hello Pokemon Trainer! Welcome to Allania!  Defeat Gym Leader Allan in the pokemon gym to earn your Allania Badge and advance in your adventure!";
	else if ( _town == 2 ) return "Hello Pokemon Trainer! Welcome to Ericatonia!  Defeat Gym Leader Eric in the pokemon gym to earn your Ericatonia Badge and advance in your adventure!";
	else if ( _town == 3 ) {
	    if ( Math.random() < .5 ) {
		return "Hello Pokemon Trainer! Congratulations on arriving in Timberville!  Gym Leader Tim is the final gym leader in this region, and once you beat him you will be ready to take on the Pokemon League once it'e established!  Best of luck!";
	    }
	    else {
		return "Hello Pokemon Trainer! Welcome to Timberville!  Defeat Gym Leader Tim in the pokemon gym to earn your Timberville Badge and become one of the few trainers to have defeated all the gyms in this region!";
	    }
	}
	else return "Ugh. It seems you bugged my AI and my voice box is malfunctioning. Whatever. Restart your game or something because I hate being in this state."
	
    }

}
