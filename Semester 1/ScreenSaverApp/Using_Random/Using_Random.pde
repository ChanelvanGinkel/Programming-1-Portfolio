void setup() {
  size(500,500);
  background(0);
}

void draw() {
  frameRate(25);
  fill(random(0),random(255),random(255));
  rect(random(500),random(500),random(100),random(100));
  ellipse(random(500),random(500),random(50,100),random(50,100));
}