public class Move {

    private String _name;
    private int _pp, _rpp;
    private int _dmg, _accuracy;
    private int _category; // 0 = physical, 1 = special, 2 = other
    private int _stat, _boost; // Stat 1 = HP, 2 = Atk, 3 = Def, 4 = Sp.Def, 5 = Sp.Atk, 6 = Speed
    

    public Move( String name, int pp, int dmg, int accuracy, int category, int stat, int boost ) {
	_name = name;
	_pp = pp;
	_rpp = _pp;
	_dmg = dmg;
	_accuracy = accuracy;
	_category = category;
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
	if ( _stat == 1 ) return "HP";
	else if ( _stat == 2 ) return "Attack";
	else if ( _stat == 3 ) return "Defense";
	else if ( _stat == 4 ) return "Sp. Attack";
	else if ( _stat == 5 ) return "Sp. Defense";
	else if ( _stat == 6 ) return "Speed";
	else return "No Stat Boost";
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

    // Helper method for use, uses p's stats as modifier to attack o.
    public double getModifier( Pokemon p ) {
	
	double mod;
	if ( _category == 0 ) mod = p.getAtk() * 0.01;
	else if ( _category == 1 ) mod = p.getSpatk() * 0.01;
	else if ( _category == 2 ) mod = 0;
	else mod = 1.0;

	return mod;
    }

    public void boost( Pokemon p ) {

	if ( _stat == 0 ) { return; }
	else if ( _stat == 1 ) { p.boostHp( _boost ); }
	else if ( _stat == 2 ) { p.boostAtk( _boost ); }
	else if ( _stat == 3 ) { p.boostDef( _boost ); }
	else if ( _stat == 4 ) { p.boostSpatk( _boost ); }
	else if ( _stat == 5 ) { p.boostSpdef( _boost ); }
	else if ( _stat == 6 ) { p.boostSpeed( _boost ); }
	
    }
    
    public String use( Pokemon p, Pokemon o ) {

	// Check PP
	if ( _rpp > 0 ) {

	    // Other Category
	    if ( _category == 2 ) {
		boost( p );
		return "" + p.getName() + " used " + _name + "!\n" + p.getName() + "'s " + getBoostedStat() + " stat was increased!";
	    }

	    // Everything else
	    // Accuracy check
	    else if ( (int)( Math.random() * 100 ) < _accuracy ) {

		// Critical Hit
		if ( Math.random() < .2 ) {
		    o.hit( (int)( getModifier( p ) * 2.0 * (double)_dmg ) );
		    return "" + p.getName() + " used " + _name + "!\nIt's a critical hit!";
		}

		else {
		    o.hit( (int)( getModifier( p ) * (double)_dmg ) );
		    return "" + p.getName() + " used " + _name + "!";
		}
	    }

	    else return "The attack missed!";
	}

	else return "There is no PP left for this move.";
    }
    
}
