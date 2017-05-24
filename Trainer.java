public abstract class Trainer {
    
    protected ArrayList<Pokemon> _party;
    protected String _name;

    public boolean hasPokemon(){
	return _party.size() != 0;
    }

    public String getName(){
	return _name;
    }

    public String setName(String newName){
	String retstr = _name;
	_name = newName;
	return retstr;
    }
}
