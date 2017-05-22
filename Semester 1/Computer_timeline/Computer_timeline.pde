// need eight key events
//\n = return
//global variables
color org = #FFC9B4; //button color 
color wp = #E8C0DC;  
color lp = #F1E0FF;
color db = #C0C4E8;
color lb = #D3F2FF;  //background
color brw = #8A7363;

void setup(){
  size(900,400);
  background(lb);
}

void draw(){
  background(lb);
  histEvent(100,185,150,30,"Tabulator and Key Punch","Created in 1880 by Herman \n Hollerith used electormechanical\n relays and digital counters. \n It was used in the 1890 Census",true);
  histEvent(300,185,150,30,"","",true);
  histEvent(500,185,150,30,"","",true);
  histEvent(700,185,150,30,"","",true);
  histEvent(100,280,150,30,"","",false);
  histEvent(300,280,150,30,"","",false);
  histEvent(500,280,150,30,"","",false);
  histEvent(700,280,150,30,"","",false);
  drawRef(850,250,50,250);
  fill(100);
  textSize(50);
  text("Historic Computer",250,60);
  textSize(15);
  text("The evolution of computer from early simple devices to modern day computer",200,80);
  text("By Chanel Van Ginkel l A3",380,100);
}

void histEvent(int x, int y, int w, int h, String tText, String dText, boolean top)
{
  strokeWeight(1);
  //line
  if(top){
    line(x+20,y+h,x+40,y+h+30);
  }else {
    line(x+20,y,x+40,y-h);
  }
  //shadow
  noStroke();
  fill(100);
  rect(x-5,y+5,w,h,5);
  //button
  stroke(0);
  fill(org);
  rect(x,y,w,h,5);
  //Words on button
  textSize(12);
  fill(0);
  text(tText,x+3,y+20);
  //Detailed Text boxes
  if(mouseX>x && mouseX<=x+w && mouseY>y && mouseY<=y+h) {
    if(top){
      fill(200);
      rect(x,y-70,150,60,5);
      fill(30);
      textSize(8);
      text(dText,x+5,y-55);
      fill(brw,100);
      rect(x,y,w,h,5);
    } else {
      fill(180);
      rect(x,y+40,150,60,5);
      fill(30);
      textSize(0.1);
      text(dText,x+5,y+55);
      fill(brw,100);
      rect(x,y,w,h,5);
    }

  }
  
}

void drawRef(int x,int y,int w, int h){
  strokeWeight(6);
  line(x,y,w,h);
  fill(0);

  for(int i = 0; i<825; i+=80) {
   strokeWeight(3);
   line(x-800+i,y-10,x-800+i,y+10);
   text("1880",x-810,y-13);
   text("1980",x-10, y-13);
  }
  
}