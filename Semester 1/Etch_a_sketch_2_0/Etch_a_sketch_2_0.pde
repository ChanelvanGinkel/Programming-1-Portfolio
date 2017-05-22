int x,y;

void setup(){
  size(400,200);
  frameRate(10);
  x = 20;
  y = 180;
}


void draw() {
  fill(255);
//  drawName();
//noLoop();
}

//Algorithm for your name)
void drawName() {
  moveDown(1);
  moveLeft(3);
  moveDown(5);
  moveRight(3);
  moveLeft(3);
  moveUp(5);
  moveRight(3);
  moveUp(1);
  moveLeft(4);
  moveDown(7);
  moveRight(5);
  //letter H
  moveUp(7); //<>//
  moveDown(3);
  moveRight(4);
  moveUp(3);
  moveDown(7);
  moveRight(1);
  //letter A
  moveUp(7);
  moveRight(4);
  moveDown(3);
  moveLeft(4);
  moveRight(4);
  moveDown(4);
  moveRight(1);
  //letter N
  moveUp(7);
  moveDiagonal1(4);
  moveUp(4);
  moveDown(7);
  moveRight(1);
  //letter E
  moveUp(7);
  moveRight(4);
  moveDown(1);
  moveLeft(3);
  moveDown(2);
  moveRight(1);
  moveDown(1);
  moveLeft(1);
  moveDown(2);
  moveRight(5);
  //Letter L
  moveUp(6);
  moveRight(1);
  moveDown(6);
  moveRight(3);
  moveDown(1);
  moveLeft(4);
}

//Method to draw right line
void moveRight(int rep){
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}

void moveLeft(int rep){
  for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x=x-(10*rep);
}

void moveDown(int rep){
  for(int i=0;i<rep*10;i++){
    point(x,y+i);
    }
    y=y+(10*rep);
}

void moveUp(int rep){
  for(int i=0;i<rep*10;i++){
    point(x,y-i);
    }
    y=y-(10*rep);
}

void moveDiagonal1(int rep){
  for(int i=0;i<rep*10;i++){
   point(x+i,y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

void moveDiagonal2(int rep){
  for(int i=0;i<rep*10;i++){
    point(x+i,y-i);
  }
  x=x+(10*rep);
  y=y-(10*rep);
}

void keyPressed() {
  if (key == CODED) {
    println(keyCode);
    if(keyCode == RIGHT){
      moveRight(1);
    } else if (keyCode == LEFT){
      moveLeft(1);
    } else if (keyCode == DOWN){
      moveDown(1);
    } else if (keyCode == UP){
      moveUp(1);
    }
    
  }
}

void mouseClicked() {
  saveFrame("Etch-a-sketech-######.png");
}