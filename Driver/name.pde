class name extends Pokemon {

  name(String newName, int newLvl) {

    _name = newName;
    _index = index;
    _lvl = newLvl;
    _hp = hp;
    _atk = atk;
    _def = def;
    _spatk = spatk;
    _spdef = spdef;
    _speed = speed;
    _type1 = type1;
    _type2 = type2;
    atk1 = new Move( "move1",pp,dmg,accuracy,category,stat,boost );
    atk2 = new Move( "move2",pp,dmg,accuracy,category,stat,boost );
    atk3 = new Move( "move3",pp,dmg,accuracy,category,stat,boost );
    atk4 = new Move( "move4",pp,dmg,accuracy,category,stat,boost );
    hasEvo = hasevo;
    evoLvl = evoLvl;
    evoTo = evolvesTo;
  }

  String toString() {
    return "name\n" + super.toString();
  }

}
