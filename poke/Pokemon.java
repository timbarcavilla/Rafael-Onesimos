// Pokemon template superclass
//package poke;

public abstract class Pokemon implements Comparable{

    protected final String[] types = { "NONE", "NORMAL", "FIRE", "GRASS", "WATER", "GROUND", "ELECTRIC", "ICE", "FIGHTING", "POISON", "FLYING", "PSYCHIC", "BUG", "ROCK", "GHOST", "DRAGON" };

    // Classification
    protected int _index;
    protected String _name;
    protected String _type1;
    protected String _type2;
    protected int _lvl;
    protected int _exp;
    protected boolean hasEvo;
    protected int evoLvl;

    // Base Stats
    protected int _hp;
    protected int _atk;
    protected int _def;
    protected int _spatk;
    protected int _spdef;
    protected int _speed;

    // Battle Stats
    protected int _health;

    // Moves
    protected Move atk1;
    protected Move atk2;
    protected Move atk3;
    protected Move atk4;
    
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
    

    public Pokemon( int i, String n, int lvl, Move move1, Move move2, Move move3, Move move4 ) {

	//this( i, n, lvl );

	_index = i;
	_name = n;
	_lvl = lvl;
	hasEvo = false;
	
	_hp = 10;
	_health = _hp;
	_atk = 10;
	_def = 10;
	_spatk = 10;
	_spdef = 10;
	_speed = 10;
	
	atk1 = move1;
	atk2 = move2;
	atk3 = move3;
	atk4 = move4;
	
    }
    */
    /** ACCESSORS AND MUTATORS **/

    public int getIndex() { return _index; }
    public String getName() { return _name; }
    public String getType1() { return _type1; }
    public String getType2() { return _type2; }
    public int getLevel() { return _lvl; }
    public int getExp() { return _exp; }
    public boolean hasEvo() { return hasEvo; }
    public int getEvoLvl() { return evoLvl; }

    public int getHp() { return _hp; }
    public int getAtk() { return _atk; }
    public int getDef() { return _def; }
    public int getSpatk() { return _spatk; }
    public int getSpdef() { return _spdef; }
    public int getSpeed() { return _speed; }

    public int getHealth() { return _health; }

    public void boostHp( int boost ) {
	_hp += boost;
	_health += boost;
    }

    public void boostAtk( int boost ) { _atk += boost; }
    public void boostDef( int boost ) { _def += boost; }
    public void boostSpatk( int boost ) { _spatk += boost; }
    public void boostSpdef( int boost ) { _spdef += boost; }
    public void boostSpeed( int boost ) { _speed += boost; }

    public String setName( String newName ) {
	String s = _name;
	_name = newName;
	return s;
    }

    public String setType1( String newType ) {
	String s = _type1;
	_type1 = newType;
	return s;
    }
    
    public String setType2( String newType ) {
	String s = _type2;
	_type2 = newType;
	return s;
    }

    public void openEvo() { hasEvo = true; }
    public void closeEvo() { hasEvo = false; }

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

    public String attack1( Pokemon p ) {
	if ( atk1 != null ) { return atk1.use( this, p ); }
	else return "This is not a move!";
    }
    public String attack2( Pokemon p ) {
	if ( atk2 != null ) return atk2.use( this, p );
	else return "This is not a move!";
    }
    public String attack3( Pokemon p ) {
	if ( atk3 != null ) return atk3.use( this, p );
	else return "This is not a move!";
    }
    public String attack4( Pokemon p ) {
	if ( atk4 != null ) return atk4.use( this, p );
	else return "This is not a move!";
    }

    public void hit( int dmg ) {
	_health -= dmg;
    }

    public void levelUp() {
	_hp += 4;
	_atk += 2;
	_def += 2;
	_spatk += 2;
	_spdef += 2;
	_speed += 1;
	_lvl += 1;
	evolve(); // only evolves when _lvl == evoLvl
    }

    public void evolve() {

	if ( hasEvo == true && _lvl == evoLvl) {
		_index += 1;
	}
	
    }

    public void heal() {
	_health = _hp;
	atk1.restorePP();
	atk2.restorePP();
	atk3.restorePP();
	atk4.restorePP();
    }
    
    public int compareTo(Pokemon p){
	if (_index > p.getIndex())
	    return 1;
	else if (_index < p.getIndex())
	    return -1;
	else
	    return 0;
    }
    
}
