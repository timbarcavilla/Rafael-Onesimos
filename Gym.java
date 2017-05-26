public class Gym{
    
    private int _level;
    private String _name;
    private Leader _leader;
    private boolean passed;

    public Gym(int newLevel, String newName, String leaderName, int ego){

	_level = newLevel;
	_name = newName;
	_leader = new Leader(leaderName,ego);
	passed = false;
    }

    public int getLevel(){ return _level; }
    public String getName(){ return _name; }
    public boolean isPassed(){ return passed; }

    
    public void puzzleGen(){

	Puzzle p;

	int r = (int)(Math.random()*2);
	if (r == 0)
	    p = new Queenboard(_level+1);
	else
	    p = new KnightTour(_level+2);
	//not finished
    }
}
