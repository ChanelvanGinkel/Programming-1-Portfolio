void setup() {
  size(700,300);
}

void draw() {
  background(128);
  changeToFar(mouseX-100);
  fill(255,0,0);
  rect(50,50,mouseX-50,20);
  drawReference(100,50);
  
  /*line(50,50,400,50);
  text("F:"+ mouseX + "Cel: " + tempConverter(mouseX),mouseX , mouseY);
  println(tempConverter(mouseX)); */
}

void drawReference(int xpos, int ypos) {
  fill(255);
  stroke(200);
  line(xpos-50,ypos,600,ypos);
  for(int i = 0; i <501; i=i+50){
    line(xpos+i,ypos-5,xpos+i,ypos+5);
    text(i,xpos+i-8, ypos-8);
  }
}

float changeToFar(float value) {
  value = (value - 32) * 5/9;
  background(0);
  fill(255);
  text("Farenheit Value =" + int(mouseX-100), 50,100);
  text("Celsius Value =" + int(value), 50,130);
  return value;
}

/*float tempConverter(float val) {
  val = (val - 32) * 5/9;
  return val;
}*/