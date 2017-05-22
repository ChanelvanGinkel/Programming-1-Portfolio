void setup(){
  size(400,400);
  background(255);
  strokeWeight(5);
  frameRate(1);
}

void draw(){
  background(255);
  fill(0,0,0);
  ellipse(width/2, height/2, random(width*0.9,height*0.95), random(width*.78, height*0.99));
 // ellipse(200,180,350,340);
  fill(80,50,13);
  ellipse(200,230,random(230,280),random(280,330));
  //ellipse(200,230,270,320);
  fill(255,255,255);
  ellipse(width/3, 200,random(40,60), random(50,70));
  ellipse(width/1.5, 200,random(40,60), random(50,70));
  fill(0,0,0);
  ellipse(width/3, 200, 20, 20);
  ellipse(width/1.5, 200, 12, 12);
  noFill();
  bezier(random(270,300), random(250,280),250,400,110,random(300,300),random(100,130),260);
  noFill();
  line(200,200,210,250);
  line(180,250,210,250);
  
}
  