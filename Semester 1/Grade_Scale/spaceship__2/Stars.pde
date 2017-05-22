class stars {
  int x, y, sSpeed;
  boolean Crater;
  float sSize, r ;

  stars(int x, int y, int sSpeed) {
    float r = random(1-10);
    this.x = x;
    this.y = y;
    
    //this.sSize = sSize;
    this.sSpeed = sSpeed;
    
    
    if (r>7) {
      Crater = true;
      strokeWeight(random(2,5));
    } else {
      Crater = false;
      strokeWeight(1);
    }
  }

  void display () {

    if (Crater) {
      stroke(3);
      ellipse(x, y, random(10, 20), random(10, 20));
    } else {
      noStroke();
      fill(2255, 255, 0);
      ellipse(x, y, sSize, sSpeed);
    }
  } 

  void move() {
  }
}