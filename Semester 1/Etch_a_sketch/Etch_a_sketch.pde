int x,y;

void setup(){
  size(400,200);
  frameRate(10);
  x = 75;
  y = 50;
}


void draw() {
  fill(255);
  drawName();
  noLoop();
}

//Algorithm for your name)
void drawName() {
  moveLeft(4);
  moveDown(7);
  moveRight(5);
  moveUp(7); //<>//
  moveDown(3);
  moveRight(4);
  moveUp(3);
  moveDown(7);
  moveRight(1);
  moveUp(7);
  moveRight(4);
  moveDown(3);
  moveLeft(4);
  moveRight(4);
  moveDown(4);
  moveRight(1);
  moveUp(7);
  moveDiagonal1(4);
  moveUp(4);
  moveDown(7);
  moveRight(1);
  moveUp(7);
  moveRight(4);
  moveLeft(4);
  moveDown(3);
  moveRight(2);
  moveLeft(2);
  moveDown(4);
  moveRight(5);
  moveUp(7);
  moveDown(7);
  moveRight(4);
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