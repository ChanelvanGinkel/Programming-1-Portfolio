void setup() {
  size(800,500);
}

void draw(){
  background(255);
  stroke(255,0,0);
  strokeWeight(6);
  line(180,60,600,60);
  strokeWeight(2);
  visual(100,150,100,252);
  changeToDogYears(mouseX-100);//conversion not correct
  fill(0);
  rect(100,150,mouseX-100,20);
  rect(100,250,mouseX-100,20);//conversion not correct
  
  noStroke();
  ellipse(50,135,12,12);
  rect(44,142,13,25,5);
  rect(44,162,5,20,5);
  rect(52,162,5,20,5);
  rect(25,142,53,5,5);
  
  rect(30,240,15,7,5);
  rect(40,247,30,12,7);
  rect(40,240,5,30,5);
  rect(65,250,5,20,5);
  triangle(40,240,45,235,45,240);
  triangle(37,247,40,247,40,260);
  
  textSize(40);
  text("How Old Is Your Dog?",180,50);
  

  
  if( mouseX < 500 && mouseX > 300 && mouseY > 300 && mouseY < 350) {
    stroke(3);
    fill(200,0,0);
    rect(300,300,200,50,5);
    fill(0);
    textSize(20);
    text("The Math Behind It",310,330);
    
    fill(255,0,0);
    stroke(3);
    rect(200,360,400,100,5);
    fill(0);
    textSize(15);
    text("When your dog is one year old it is equevalent to a 15 \nyear old human. Two years old is an additional 9 \nhuman years, and every year after that is equal to 5 \nhuman years.",210,380);
  } else {
    stroke(3);
    fill(255,0,0);
    rect(300,300,200,50,5);
    fill(0);
    textSize(20);
    text("The Math Behind It",310,330);
  }
  textSize(15);
  text("Chanel van Ginkel",20,490);
}

void visual(int x, int y, int a, int b) {
  textSize(20);
  stroke(255,0,0);
  line(x,y,740,y);
  for(int i = 0; i < 17; i = i+1) {
    line(x+i*40,y-5,x+i*40,y+5);
    fill(0);
    text(i,x+i*40-8, y-8);
  }
  line(a,b,740,b);
  for(int i = 0; i < 81; i = i+5){
    stroke(255,0,0);
    line(a+i*8,b-5,a+i*8,b+5);
    fill(0);
    text(i,a+i*8-8,b-8);
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