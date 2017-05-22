Ant a1;
Food[] f = new Food[3];
Bullets b1;
Bullets b2;
Bullets b3;
int x, y;

int score, eaten;

void setup() {
  size(500, 500);
  background(200);
  noCursor();
  a1 = new Ant(width/2, height/2, 10);

 // b1 = new Bullets(0, 250);
 // b2 = new Bullets(250, 0);
 // b3 = new Bullets(0, 0);

  // Populate Food
  for (int i = 0; i<f.length; i++) {
    f[i] = new Food(int(random(width)), int(random(height)));
  }
  
}

void draw() {
  background(200);
  pattern();
  if(a1.d == 'd') {
    a1.displayD();
  } else if(a1.d == 'u') {
    a1.display();
  } else if(a1.d == 'l') {
    a1.displayL();
  } else if(a1.d == 'r') {
    a1.displayR();
  }
  
  if(a1.x < 20) {
    //a1.x += 20;
    gameOver();
  } else if(a1.x > 500) {
    //a1.x -= 20;
    gameOver();
  } else if(a1.y < 0) {
    //a1.y += 20;
    gameOver();
  } else if(a1.y > 500) {
    //a1.y -= 20;
    gameOver();
  }
  
  
  //a1.display();
 /* for (int i=0; i<f.length; i++) {
    f[i].display();
    if (f[i].y > height) {
      f[i].vis = false;
    }
  }*/
  
}
  
  void pattern() {
    rectMode(CORNER);
    noStroke();
    //horizontal
    fill(100, 100, 255, 120);
    rect(0, 50, 500, 25);
    rect(0, 125, 500, 25);
    rect(0, 200, 500, 25);
    rect(0, 275, 500, 25);
    rect(0, 350, 500, 25);
    rect(0, 425, 500, 25);
    //vertical
    rect(50, 0, 25, 500);
    rect(125, 0, 25, 500);
    rect(200, 0, 25, 500);
    rect(275, 0, 25, 500);
    rect(350, 0, 25, 500);
    rect(425, 0, 25, 500);
    //gray lines
    rectMode(CORNER);
    fill(100, 100, 100, 60);
    rect(0, 20, 500, 10);
    rect(0, 95, 500, 10);
    rect(0, 170, 500, 10);
    rect(0, 245, 500, 10);
    rect(0, 320, 500, 10);
    rect(0, 395, 500, 10);
    rect(0, 470, 500, 10);

    rect(20, 0, 10, 500);
    rect(95, 0, 10, 500);
    rect(170, 0, 10, 500);
    rect(245, 0, 10, 500);
    rect(320, 0, 10, 500);
    rect(395, 0, 10, 500);
    rect(470, 0, 10, 500);
  }
  void keyPressed() {
    if (key == CODED) {
      println(keyCode);
      if (keyCode == RIGHT) {
        a1.moveRight(1);
        a1.d = 'r';
      } else if (keyCode == LEFT) {
        a1.moveLeft(1);
        a1.d = 'l';
      } else if (keyCode == DOWN) {
        a1.moveDown(1);
        a1.d = 'd';
      } else if (keyCode == UP) {
        a1.moveUp(1);
        a1.d = 'u';
      }
    }
  }
  void gameOver() {
    background(0);
    fill(0);
    rect(0, 0, width, height);
    fill(255);
    textSize(40);
    text("GAME OVER", 150, 200);
  }