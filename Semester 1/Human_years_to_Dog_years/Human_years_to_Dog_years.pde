void setup() {
  size(800,300);
}

void draw(){
  background(240,230,0);
  visual(50,50);
  changeToDogYears(mouseX-100);
  fill(0);
  rect(50,50,mouseX-50,20);
  
  /*ellipse();
  rect();
  rect()
  rect();
  
  rect();
  rect();
  rect();
  rect();
  triangle();*/
}

void visual(int x, int y) {
  fill(0);
  stroke(200);
  line(x+50,y,600,y);
  for(int i = 0; i < 20; i = i+50) {
    line(x+i,y-5,x+i,y+5);
    text(i,x+i-8, y-8);
    
  }
}


float changeToDogYears(float value) {
  if (value == 0.25) {
    value = 3.75;
  }else if (value == 0.5) {
    value = 7.5;
  }else if(value < 2) {
    value = 15;
  }else if (value < 3) {
    value = 15+9;
  }else {
    value = 15+9+(5*value);
  }
  return value;
}