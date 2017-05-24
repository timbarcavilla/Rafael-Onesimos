public class Move {

    private String _name;
    private int _pp, _rpp;
    private int _dmg, _accuracy;
    private int _stat, _boost;
    

    public Move( String name, int pp, int dmg, int accuracy, int stat, int boost ) {
	_name = name;
	_pp = pp;
	_rpp = _pp;
	_dmg = dmg;
	_accuracy = accuracy;
	_stat = stat;
	_boost = boost;
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

    public int getDamage() {
	return _dmg;
    }

    public int getAccuracy() {
	return _accuracy;
    }

    public String getBoostedStat() {
	if ( _stat == 0 ) return "No Stat Boost";
	else if ( _stat == 1 ) return "HP";
	else if ( _stat == 2 ) return "Attack";
	else if ( _stat == 3 ) return "Defense";
	else if ( _stat == 4 ) return "Sp. Attack";
	else if ( _stat == 5 ) return "Sp. Defense";
	else if ( _stat == 6 ) return "Speed";
    }

    public int getBoostAmt() {
	return _boost;
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
