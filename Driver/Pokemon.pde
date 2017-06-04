abstract class Pokemon {

  final String[] types = { "NORMAL", "FIRE", "GRASS", "WATER", "GROUND", "ELECTRIC", "ICE", "FIGHTING", "POISON", "FLYING", "PSYCHIC", "BUG", "ROCK", "GHOST", "DRAGON" };

  // Classification
  int _index; // national pokedex index number
  String _name; // name/nickname of pokemon
  int _type1; // primary type
  int _type2; // secondary type
  int _lvl; // level, based on exp
  int _exp; // experience points
  boolean hasEvo; // boolean for if the pokemon has a next evolution
  int evoLvl; // level in which this pokemon evolves, if hasEvo is true
  int evoTo; // index of next pokemon in evolution tree

  // Base Stats
  int _hp;
  int _atk;
  int _def;
  int _spatk;
  int _spdef;
  int _speed;

  // Battle Stats
  int _health; // different from _hp bc this is editted in battle, _hp is the stat itself.

  // Moves
  Move atk1;
  Move atk2;
  Move atk3;
  Move atk4;

  /** ACCESSORS AND MUTATORS **/

  int getIndex() { 
    return _index;
  }
  String getName() { 
    return _name;
  }
  String getType1() { 
    return types[_type1];
  }
  String getType2() { 
    return types[_type2];
  }
  int getLevel() { 
    return _lvl;
  }
  int getExp() { 
    return _exp;
  }
  boolean hasEvo() { 
    return hasEvo;
  }
  int getEvoLvl() { 
    return evoLvl;
  }

  int getHp() { 
    return _hp;
  }
  int getAtk() { 
    return _atk;
  }
  int getDef() { 
    return _def;
  }
  int getSpatk() { 
    return _spatk;
  }
  int getSpdef() { 
    return _spdef;
  }
  int getSpeed() { 
    return _speed;
  }

  int getHealth() { 
    return _health;
  }

  void boostHp( int boost ) {
    _hp += boost;
    _health += boost;
  }

  void boostAtk( int boost ) { 
    _atk += boost;
  }
  void boostDef( int boost ) { 
    _def += boost;
  }
  void boostSpatk( int boost ) { 
    _spatk += boost;
  }
  void boostSpdef( int boost ) { 
    _spdef += boost;
  }
  void boostSpeed( int boost ) { 
    _speed += boost;
  }

  String setName( String newName ) {
    String s = _name;
    _name = newName;
    return s;
  }

  String setType1( int newType ) {
    String s = getType1();
    _type1 = newType;
    return s;
  }

  String setType2( int newType ) {
    String s = getType2();
    _type2 = newType;
    return s;
  }

  void openEvo() { 
    hasEvo = true;
  }
  void closeEvo() { 
    hasEvo = false;
  }

  Move setMove( int place, Move m ) {

    Move tmp;

    if ( place == 1 ) {
      tmp = atk1;
      atk1 = m;
    } else if ( place == 2 ) {
      tmp = atk2;
      atk2 = m;
    } else if ( place == 3 ) {
      tmp = atk3;
      atk3 = m;
    } else if ( place == 4 ) {
      tmp = atk4;
      atk4 = m;
    } else tmp = m;

    return tmp;
  }

  String attack1( Pokemon p ) {
    if ( atk1 != null ) { 
      return atk1.use( this, p );
    } else return "This is not a move!";
  }
  String attack2( Pokemon p ) {
    if ( atk2 != null ) return atk2.use( this, p );
    else return "This is not a move!";
  }
  String attack3( Pokemon p ) {
    if ( atk3 != null ) return atk3.use( this, p );
    else return "This is not a move!";
  }
  String attack4( Pokemon p ) {
    if ( atk4 != null ) return atk4.use( this, p );
    else return "This is not a move!";
  }

  void hit( int dmg ) {
    _health -= dmg;
  }

  void levelUp() {
    _hp += 3;
    _atk += 2;
    _def += 2;
    _spatk += 2;
    _spdef += 2;
    _speed += 1;
    _lvl += 1;
    evolve(); // only evolves when _lvl == evoLvl
  }

  void evolve() {

    if ( hasEvo == true && _lvl == evoLvl) {
      _index += evoTo;
    }
  }

  void heal() {
    _health = _hp;
    atk1.restorePP();
    atk2.restorePP();
    atk3.restorePP();
    atk4.restorePP();
  }

  int compareTo(Pokemon p) {
    if (_index > p.getIndex())
      return 1;
    else if (_index < p.getIndex())
      return -1;
    else
      return 0;
  }
}