class Car {
  //member variables
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  //constuctor
  Car() {
    c = color(random(150,255), random(204,255), random(150,255));
    xpos = width/2;
    ypos = random(height);
    xspeed = random(30);
  }

  void draw() {
    background(0);
    display();
    drive();
  }

  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    fill(255);
    rect(xpos - 5, ypos + 6, 5,3);
    rect(xpos + 5, ypos + 6, 5,3);
    rect(xpos - 5, ypos - 5, 5,3);
    rect(xpos + 5, ypos - 5, 5,3);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}