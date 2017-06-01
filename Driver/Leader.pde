class Leader extends Trainer {

  int egoSize;

  Leader(String newName, int newEgo) {

    _name = newName;
    egoSize = newEgo;
    _party = new ArrayList<Pokemon>();
  }

  void addPokemon(Pokemon p) {
    _party.add(p);
  }

  boolean hasPokemon() {

    for (Pokemon p : _party) {
      if (p.getHealth() > 0) {
        return true;
      }
    }
    return false;
  }
  
  void healPokemon(){
    for (Pokemon p : _party){
      p.heal();
    }
  }
  
}