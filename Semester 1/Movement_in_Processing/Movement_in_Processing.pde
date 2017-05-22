int blue = 22;
int bleh = 29;
int Farkle = 800;
int Lucas = 300;


void setup() {
  size(800,300);
}
void draw() {
  background(0,230,180);
  fill(200,0,200);
  ellipse(blue++,bleh++,50,50);
  fill(0,255,0);
  ellipse(Farkle--,Lucas--,100,100);
  fill(0,0,255);
  rect(blue++,Lucas,50,50);
  rect(Farkle,bleh--,70,80);
  println(blue);
}