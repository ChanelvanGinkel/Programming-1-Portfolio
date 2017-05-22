class Bullets {
  int x, y, w, h;
  int xspeed, yspeed;


  Bullets(int x, int y, int w, int h, int xspeed, int yspeed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }

  void diplay() {
    ellipseMode(CENTER);
    fill(100);
    ellipse(x, y, w, h);

    x += xspeed;
    y += yspeed;
    if (x >= width-w/2 || y <= h/2) {
      xspeed *= -1;
    }
    if (y >= height-h/2 || y <= h/2) {
      yspeed = yspeed *= -1;
    }
  }
  //needs movement
  //needs edge detection to "bounce" back and fourth
}