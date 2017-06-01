public class Leader extends Trainer{

    private int egoSize;

    public Leader(String newName, int newEgo){

	_name = newName;
	egoSize = newEgo;
	_party = new ArrayList<Pokemon>();
  
    }
    
    //check if party has healthy pokemon left
    public boolean hasPokemon() {

	for (Pokemon p : _party) {
	    if ( p.getHealth() > 0 )
		return true;
	}
	return false;
    }

    //heal all pokemon
    public void healPokemon(){
	for (Pokemon p : _party){
	    p.heal();
	}
    }


    public void addPokemon(Pokemon p){
      _party.add(p);
    }

}
