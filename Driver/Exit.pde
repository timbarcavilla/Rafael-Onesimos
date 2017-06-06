class Exit {

  int xr1, xr2, yr1, yr2;
  int posX, posY;

  Exit(int xcor1, int xcor2, int ycor1, int ycor2) {

    xr1 = xcor1;
    xr2 = xcor2;
    yr1 = ycor1;
    yr2 = ycor2;
    posX = (xcor1+xcor2)/2;
    posY = (ycor1+ycor2)/2;
  }

  boolean checkExit(int xcor, int ycor) {

    if ((xcor >= xr1 && xcor <= xr2) && (ycor >= yr1 && ycor <= yr2)) {
      return true;
    }
    return false;
  }

  void display() {

    fill(0);
    rect(xr1, yr1, xr2-xr1, yr2-yr1);
  }
}