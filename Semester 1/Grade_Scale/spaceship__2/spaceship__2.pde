void setup() {
  size(500,500);
  background (0);
  
  //for (int i = 0; i<r.lenght; i++) {
   // s[i] = new stars(int(random(width)), int(random(-10000, 100)), int(random(2,3)));
  //}
  
}

Spaceship s1;
stars[] s = new stars[1000];
  
void draw() {
  s1 = new Spaceship(mouseX,mouseY,20,20,11);
  background(0);
  s1.display();
  if (keyPressed) {
    
  }
}