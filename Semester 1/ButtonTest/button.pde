class Button {
  //member variables
  int x, y, w, h;
  color b1, b2, t1, t2;
  String val;
  Boolean over;


  Button(color b1, int x, int y, int w, int h, String val) {
    this.b1 = b1;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    over = false;
  }

  void display() {
    if (over) {
      stroke(0);
      fill(50);
      rect(x+5, y+5, w, h, 15);
      fill(222,234,255);
      rect(x, y, w, h, 15);
      fill(t1);
      text(val, x+5, y+20);
    } else {
      noStroke();

      fill(50);
      rect(x+5, y+5, w, h, 15);
      fill(b1);
      stroke(255);
      rect(x, y, w, h, 15);
      fill(255);
      text(val, x+5, y+20);
    }
  }

  void hover(int xpos, int ypos) {
    over = xpos > x && xpos < x+w && ypos > y && ypos < y+h;
  }
}