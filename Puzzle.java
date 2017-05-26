public abstract class Puzzle{

    protected int _size;
    protected boolean status;

    abstract boolean checkSolution(int _solution);
    abstract void draw();
}
