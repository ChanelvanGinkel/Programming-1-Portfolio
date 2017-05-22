class Button {
  //member variables
  int x, y, w, h, qx, qy, ux, uy, ax, ay, dx, dy;
  color b1, b2, t1, t2;
  String val;
  boolean over;
  boolean isNumber;
  boolean isOperator;
  boolean isSpecial;
  float numVal;
  String opVal;
  String spVal;

  //constructor
  Button(int x, int y) {
    this.x = x;
    this.y = y;
  }

  //constructor for number buttons
  Button asNumber(float numVal, color b1, color t1, int qx, int qy, int ux, int uy, int ax, int ay, int dx, int dy) {
    isNumber= true;
    this.numVal = numVal;
    this.b1 = b1;
    this.t1 = t1;
    this.qx = qx;
    this.qy = qy;
    this.ux = ux;
    this.uy = uy;
    this.ax = ax;
    this.ay = ay;
    this.dx = dx;
    this.dy = dy;
    return this;
  }

  //constructor for operator buttons
  Button asOperator(String opVal, int w, int h, color b2, color t2) {
    isOperator = true;
    this.w = w;
    this.h = h;
    this.opVal = opVal;
    this.b2 = b2;
    this.t2 = t2;
    return this;
  }

  //constructor for special buttons
  Button asSpecial(String spVal, color b1, color t1, int qx, int qy, int ux, int uy, int ax, int ay, int dx, int dy) {
    isSpecial = true;
    this.spVal = spVal;
    this.b1 = b1;
    this.t1 = t1;
    this.qx = qx;
    this.qy = qy;
    this.ux = ux;
    this.uy = uy;
    this.ax = ax;
    this.ay = ay;
    this.dx = dx;
    this.dy = dy;
    return this;
  }

  //constructer
  /*Button(color b1, int x, int y, int w, int h, String val) {
   this.b1 = b1;
   this.x = x;
   this.y = y;
   this.w = w;
   this.h = h;
   this.val = val;
   over = false;
   }*/

  void display() {
    if (isNumber) {
      if (over) {  
        stroke(255);
        fill(182, 194, 215);
        quad(qx, qy, ux, uy, ax, ay, dx, dy);
        fill(t1);
        text(int(numVal), qx+5, qy+45);
      } else {
        stroke(255);
        fill(222, 234, 255);
        quad(qx, qy, ux, uy, ax, ay, dx, dy);
        fill(t1);
        text(int(numVal), qx+5, qy+45);
      }
    } else if (isOperator) {
      if (over) {
        stroke(255);
        fill(b2 +50, 30, 50);
        rect(x, y, w, h);
        fill(t2);
        text(opVal, x+22, y+30);
      } else {
        stroke(255);
        fill(b2);
        rect(x, y, w, h);
        fill(t2);
        text(opVal, x+22, y+30);
      }
    } else if (isSpecial) {
      if (over) {  
        stroke(255);
        fill(182, 194, 215);
        quad(qx, qy, ux, uy, ax, ay, dx, dy);
        fill(t1);
        text(spVal, qx+5, qy+45);
      } else {
        stroke(255);
        fill(222, 234, 255);
        quad(qx, qy, ux, uy, ax, ay, dx, dy);
        fill(t1);
        text(spVal, qx+5, qy+45);
      }
    }
    /*noStroke();
     fill(50);
     rect(x+5, y+5, w, h, 15);
     fill(b1);
     stroke(255);
     rect(x, y, w, h, 15);
     fill(255);
     text(val, x+5, y+20);*/
  }

  void hover() {
    if (isNumber) {
      over =  mouseX > dx && mouseX < ux && mouseY > qy && mouseY < ay;
    } else if (isOperator) {
      over = mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;
    } else if (isSpecial) {
      over =  mouseX > dx && mouseX < ux && mouseY > qy && mouseY < ay;
    }
    
  }
}