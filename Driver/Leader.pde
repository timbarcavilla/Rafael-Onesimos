class Leader extends Trainer {

  Leader(String newName) {

    _name = newName;
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
  
  Pokemon getFirst(){
    for (int i = 0; i < _party.size(); i++) {
      if (_party.get(i).getHealth() > 0) {
        return _party.get(i);
      }
    }
    return null;
  }
  
}