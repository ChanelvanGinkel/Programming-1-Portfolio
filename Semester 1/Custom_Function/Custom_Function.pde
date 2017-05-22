void setup(){
  size(400,400);
  background(255);
}
void draw(){
  button(150,170,100,60,240,210,0,"Meh");
  button(150,260,100,60,230,0,0,"Bad");
  button(150,80,100,60,0,250,0,"Good");
}
void button(int x, int y, int w, int h,int r, int g, int b, String t){
  //shadow
  noStroke();
  fill(40);
  rect(x-7,y+7,w,h,15);
  //button
  stroke(6);
  fill(r,g,b);
  rect(x,y,w,h,15);
  
  fill(2);
  text(t,x+35,y+35);
}