// setup runs one time
void setup() {
  size(1000,300);
  background(255);
  frameRate(100);
}

// operates on a loop
void draw() {
  fill(169,28,198);
  rect(60,50,mouseX, mouseY);
 
}