class Button {
  //button location & size
  float y;
  float x;
  float w;
  float h;
  // Button on or off
  boolean on;

  //Constructor initializes all variables
  Button(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    on = false;
  }
  void display() {
    background(255);
    stroke(0);
    if (mouseX >= x && mouseX <= w+x && mouseY >= y && mouseY <= h+y) {
      fill(0, 0, 255);
    } else {
      fill(255, 0, 0);
    }
    rect(x, y, w, h);
  }
}