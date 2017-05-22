class Food {
  int x,y;
  boolean vis;
  Food(int x, int y) {
    this.x = x;
    this.y = y;
    vis = true;
  }
  
  void display() {
    fill(200,200,0);
    rect(x,y, 20,20);
  }
    boolean disappear(int ax, int ay, int aw, int ah) {
    boolean disappear = false;
    if (ax-(aw/2) >= x-(20/2) && 
      ax+(aw/2) <= x+(20/2) && 
      ay-(ah/2) >= y-(20/2) && 
      ay+(ah/2) <= y+(20/2)) {
      vis = false;
      disappear = true;
      x = -100;
      y = -100;
    }
    return disappear;
  }
}