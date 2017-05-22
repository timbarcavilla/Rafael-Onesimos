public class Move {

    private String _name;
    private int _pp, _rpp;
    

    public Move( String name, int pp ) {
	_name = name;
	_pp = pp;
	_rpp = _pp;
    }

    public String getName() {
	return _name;
    }
    
    public int getPP() {
	return _pp;
    }

    public int getRPP() {
	return _rpp;
    }

    // Useful in case we implement ethers in the future, which boosts max PP.
    public void setPP( int newPP ) {
	_pp = newPP;
    }

    public void restorePP() {
	_rpp = _pp;
    }
    
    public void use() {
	_rpp -= 1;
    }
    
}
