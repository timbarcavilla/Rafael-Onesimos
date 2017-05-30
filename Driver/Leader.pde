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
}