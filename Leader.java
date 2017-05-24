public class Leader extends Trainer{

    private int egoSize;

    public Leader(String newName, int newEgo){
	
	_name = newName;
	egoSize = newEgo;
	_party = new ArrayList<Pokemon>();
    }

}
