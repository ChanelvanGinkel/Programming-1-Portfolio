Button b1;
void setup() {
  size(300,300);
  background(255,245,222);
  b1 = new Button(color(120,141,178), 100,100,100,100,"Test");
}
void draw() {
  b1.display();
  b1.hover(mouseX,mouseY);
}