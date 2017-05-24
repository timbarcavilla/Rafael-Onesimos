// Pokemon template superclass

abstract class Pokemon {

    // Classification
    private final int _index;
    private String _name;
    private int _lvl;
    private int _exp;

    // Base Stats
    private int _hp;
    private int _atk;
    private int _def;
    private int _spatk;
    private int _spdef;
    private int _speed;

    // Battle Stats
    private int _health;

    // Moves
    String _move1;
    String _move2;
    String _move3;
    String _move4;
    
    Move atk1;
    Move atk2;
    Move atk3;
    Move atk4;
    
    /* 
    public Pokemon() {
	_index = 0;
	_lvl = 1;
    }

    public Pokemon( int i, String n, int lvl ) {

	_index = i;
	_name = n;
	_lvl = lvl;

    }
    */

    public Pokemon( int i, String n, int lvl, Move move1, Move move2, Move move3, Move move4 ) {

	//this( i, n, lvl );

	_index = i;
	_name = n;
	_lvl = lvl;
	atk1 = move1;
	atk2 = move2;
	atk3 = move3;
	atk4 = move4;
	
    }

    /** ACCESSORS AND MUTATORS **/

    public int getIndex() { return _index; }
    public String getName() { return _name; }
    public int getLevel() { return _lvl; }
    public int getExp() { return _exp; }

    public int getHp() { return _hp; }
    public int getAtk() { return _atk; }
    public int getDef() { return _def; }
    public int getSpatk() { return _spatk; }
    public int getSpdef() { return _spdef; }
    public int getSpeed() { return _speed; }

    public int getHealth() { return _health; }

    public String setName( String newName ) {
	String s = _name;
	_name = newName;
	return s;
    }

    /** ===========================
	MOVESET
	20% chance of critical hits
	Two physical attacks, Two special attacks
     ========================== **/
    
    // Basic Attack #1 -- Direct hits
    // Does _atk/2 damage
    // 100% accuracy
    public String attack1( Pokemon p ) {

	if ( atk1.getPP() > 0 ) {
	    
	    atk1.use();

	    // Critical Hit
	    if ( Math.random() < .2 ) {
		p.hit( _atk );
		return "" + _name + " used " + atk1.getName() + "!\nIt's a critical hit!";
	    }
	    
	    // Normal Hit
	    else {
		p.hit( _atk / 2 );
		return "" + _name + " used " + atk1.getName() + "!";
	    }
	}
	else return "There is no PP left for this move."
    }

    // Basic Attack #2 -- Direct hits
    // Does _atk damage
    // 70% accuracy
    public String attack2( Pokemon p ) {

	if ( atk2.getPP() > 0 ) {

	    atk2.use();
	    
	    if ( Math.random() < .7 ) {
		
		// Critical Hit
		if ( Math.random() < .2 ) {
		    p.hit( _atk * 2 );
		    return "" + _name + " used " + atk2.getName() + "!\nIt's a critical hit!";
		}
		
		// Normal Hit
		else {
		    p.hit( _atk );
		    return "" + _name + " used " + atk2.getName() + "!";
		}
	    }
	    else return "The attack missed!";
	}
	
	else return "There is no PP left for this move."
	
    }

    // Special Attack #1 -- Ranged attack
    // Does _spatk damage
    // 85% accuracy
    public String attack3( Pokemon p ) {

	if ( atk3.getPP() > 0 ) {
	
	    atk3.use();

	    if ( Math.random() < .85 ) {

		// Critical Hit
		if ( Math.random < .2 ) {
		    p.hit( _spatk * 2 );
		    return "" + _name + " used " + atk3.getName() + "!\nIt's a critical hit!";
		}

		// Normal Hit
		else {
		    p.hit( _spatk );
		    return "" + _name + " used " + atk3.getName() + "!";
		}
	    }
	    else return "The attack missed!";
	}
	
	else return "There is no PP left for this move.";
	
    }
    
    // Special Attack #2 -- Ranged attack
    // Does double _spatk damage
    // 50% accuracy
    public String attack4( Pokemon p ) {

	if ( atk4.getPP() > 0 ) {
	
	    atk4.use();
	
	    if ( Math.random() < .50 ) {

		// Critical Hit
		if ( Math.random() < .2 ) {
		    p.hit( _spatk * 4 );
		    return "" + _name + " used " + atk4.getName() + "!\nIt's a critical hit!";
		}
		
		// Normal Hit
		else {
		    p.hit( _spatk * 2 );
		    return "" + _name + " used " + atk4.getName() + "!";
		}
	    }
	    else return "The attack missed!";
	}
	
	else return "There is no PP left for this move.";
	
    }

    public Move setMove( int place, Move m ) {

	Move tmp;

	if ( place == 1 ) {
	    tmp = atk1;
	    atk1 = m;
	}
	else if ( place == 2 ) {
	    tmp = atk2;
	    atk2 = m;
	}
	else if ( place == 3 ) {
	    tmp = atk3;
	    atk3 = m;
	}
	else if ( place == 4 ) {
	    tmp = atk4;
	    atk4 = m;
	}
	else tmp = m;
	
	return tmp;
	
    }

    public void hit( int dmg ) {
	_health -= dmg;
    }

    public void levelUp() {
	_index += 1;
	_hp += 4;
	_atk += 2;
	_def += 2;
	_spatk += 2;
	_spdef += 2;
	_speed += 1;
	_lvl += 1;
    }

    public void heal() {
	_health = _hp;
	atk1.restorePP();
	atk2.restorePP();
	atk3.restorePP();
	atk4.restorePP();
    }
    
    
}
