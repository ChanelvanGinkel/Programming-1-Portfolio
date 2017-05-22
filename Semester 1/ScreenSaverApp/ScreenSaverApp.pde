Lines[] myLines = new Lines[10]; 

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  //  xpos = width/2;
  //  ypos = height/2;
  //frameRate(10);
  for (int i = 0; i < myLines.length; i++) {
    myLines[i]= new Lines(random(width), random(height), random(1,10), random(10,100), random(30, 200));
  }
}

void draw() {
 for(int i = 0; i < myLines.length; i++) {
    myLines[i].display();
 }
  /* moveRight(xpos, ypos, pointCount);
   moveUp(xpos, ypos, pointCount);
   moveLeft(xpos, ypos, pointCount); 
   moveDown(xpos, ypos, pointCount);*/
}