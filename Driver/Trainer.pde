import java.util.ArrayList;
abstract class Trainer {

  ArrayList<Pokemon> _party;
  String _name;

  boolean hasPokemon() {
    return _party.size() != 0;
  }

  String getName() {
    return _name;
  }

  String setName(String newName) {
    String retstr = _name;
    _name = newName;
    return retstr;
  }
}