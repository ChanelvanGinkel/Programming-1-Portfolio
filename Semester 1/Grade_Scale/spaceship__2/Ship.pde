class Spaceship {
  String name;
  int x, y, w, h, lx, ly;
  int speed;
  boolean over;

  Spaceship(int x, int y, int w, int h, int speed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    lx = 0;
    ly = 0;
  }

  void display() {
    noStroke();
    fill(200);
    triangle(x+90, y+30, x+100, y+10, x+110, y+30);
    triangle(x+50, y+70, x+100, y+30, x+150, y+70);
    fill(200);
    rect(x+60, y+70, 80, 7);
    fill(100);
    rect(x+90, y+30, 20, 30);
    fill(0, 0, 200);
    rect(x+80, y+35, 10, 50);
    rect(x+110, y+35, 10, 50);
    fill(0);
    ellipse(x+100, y+45, 15, 25);
    fill(100);
    rect(x+65, y+60, 5, 25);
    rect(x+130, y+60, 5, 25);
  }

  void flyUp() {
    y-=speed;
  }
  void flyDown() {
    y+=speed;
  }
  void flyRight() {
    x+=speed;
  }
  void flyLeft() {
    x-=speed;
  }
}