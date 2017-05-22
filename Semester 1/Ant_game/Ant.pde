class Ant {
  int x, y;
  int speed;
  char d;

  Ant(int x, int y, int speed) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    d = ' ';
  }

  void display() {
    noCursor();
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(0);
    ellipse(x, y, 5, 15); //body
    ellipse(x, y-10, 12, 10); //head
    ellipse(x, y+7, 10, 10);

    line(x, y, x+5, y-25);
    line(x, y, x-5, y-25);

    line(x, y-1, x+12, y-8);
    line(x, y-1, x+13, y-1);
    line(x, y, x+10, y+3);
    line(x+10, y+3, x+12, y+15);

    line(x, y-1, x-12, y-8);
    line(x, y-1, x-13, y-1);
    line(x, y, x-10, y+3);
    line(x-10, y+3, x-12, y+15);
  }
  void displayD() {
    noCursor();
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(0);
    ellipse(x, y, 5, 15); //body
    ellipse(x, y+10, 12, 10); //head
    ellipse(x, y-7, 10, 10);

    line(x, y, x+5, y+25);
    line(x, y, x-5, y+25);

    line(x, y+1, x+12, y+8);
    line(x, y+1, x+13, y+1);
    line(x, y, x+10, y-3);
    line(x+10, y-3, x+12, y-15);

    line(x, y+1, x-12, y+8);
    line(x, y+1, x-13, y+1);
    line(x, y, x-10, y-3);
    line(x-10, y-3, x-12, y-15);
  }

  void displayR() {
    noCursor();
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(0);
    ellipse(x, y, 15, 5); //body
    ellipse(x+10, y, 10, 12); //head
    ellipse(x-7, y, 10, 10);

    line(x, y, x+25, y-5);
    line(x, y, x+25, y+5);

    line(x+1, y, x+8, y-12);
    line(x+1, y, x+1, y-13);
    line(x, y, x-3, y-10);
    line(x-3, y-10, x-15, y-12);

    line(x+1, y, x+8, y+12);
    line(x+1, y, x+1, y+13);
    line(x, y, x-3, y+10);
    line(x-3, y+10, x-15, y+12);
  }

  void displayL() {
    noCursor();
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    fill(0);
    ellipse(x, y, 15, 5); //body
    ellipse(x-10, y, 10, 12); //head
    ellipse(x+7, y, 10, 10);

    line(x, y, x-25, y+5);
    line(x, y, x-25, y-5);

    line(x-1, y, x-8, y+12);
    line(x-1, y, x-1, y+13);
    line(x, y, x+3, y+10);
    line(x+3, y+10, x+15, y+12);

    line(x-1, y, x-8, y-12);
    line(x-1, y, x-1, y-13);
    line(x, y, x+3, y-10);
    line(x+3, y-10, x+15, y-12);
  }

  void moveRight(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x+i, y);
    }
    x=x+(10*rep);
    displayR();
  }

  void moveLeft(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x-i, y);
    }
    x=x-(10*rep);
    displayL();
  }

  void moveDown(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x, y+i);
    }
    y=y+(10*rep);
    displayD();
  }

  void moveUp(int rep) {
    for (int i=0; i<rep*10; i++) {
      point(x, y-i);
    }
    y=y-(10*rep);
    display();
  }
  /*void moveUp() {
   y-= speed;
   }
   void moveDown() {
   y+= speed;
   }
   void moveRight() {
   x+=speed;
   }
   void moveLeft() {
   x-=speed;
   }
   
   void distroyFood() {
   }*/
}


/*void keyPressed() {
 if (key == CODED) {
 if (keyCode == UP) {
 if (a1.y>1) {
 a1.y=height;
 } else {
 a1.moveUp();
 }
 } else if (keyCode == DOWN) {
 if (a1.y>height) {
 a1.y=0;
 } else {
 a1.moveDown();
 }
 } else if (keyCode == RIGHT) {
 if (a1.x>width) {
 a1.x=0;
 } else {
 a1.moveRight();
 }
 } else if (keyCode == LEFT) {
 if (a1.x<0) {
 a1.x=width;
 } else {
 a1.moveLeft();
 }
 }
 }
 }*/