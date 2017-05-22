void setup(){
  size(600,600);
  frameRate(10);
  background(200);

}
void draw(){
  background(255);
 // zoog(int(random(width)),int(random(height)), int(random(255)));
  zoog();
//  zoog(mouseX+100,mouseY);
 // zoog(mouseX-100,mouseY);
}

 void zoog(){
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(100);
  rect(mouseX,mouseY,20,100);
  stroke(0);
  fill(255);
  ellipse(mouseX,mouseY-30,60,60);
  fill(0);
  ellipse(mouseX-19,mouseY-30,16,32);
  ellipse(mouseX+19,mouseY-30,16,32);
  line(mouseX-10,mouseY+50,mouseX-20,mouseY+60);
  line(mouseX+10,mouseY+50,mouseX+20,mouseY+60);
  line(mouseX-10,mouseY,mouseX-20,mouseY+10);
  line(mouseX+10,mouseY,mouseX+20,mouseY+10);
 }