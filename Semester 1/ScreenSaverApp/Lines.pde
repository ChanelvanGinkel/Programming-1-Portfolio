class Lines {
  float xpos;
  float ypos;
  float strokeW;
  float pointCount;
  float lineColor;

  Lines(float tempX, float tempY, float tempStroke, float tempLength, float tempColor) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempLength;
    lineColor = tempColor;
  }
  void display() {
    //strokeW = random(1, 10);
    //pointCount = random(10, 100);
    stroke(lineColor);
    //strokeWeight(strokeW);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>80) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, pointCount);
      } else if (random(100)>60) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, pointCount);
      } else if (random(100)>40) {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, pointCount);
      } else {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, pointCount);
      } /*else if (random(100)>15) { 
        moveUpright(xpos, ypos , pointCount);
      } else if (random(100)>10) {
        moveUpleft(xpos, ypos , pointCount);
      } else if (random(100)>5) {
        moveDownright(xpos, ypos , pointCount);
      } else {
        moveDownleft(xpos, ypos , pointCount);
      }*/
      
    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX-i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos = startY+i;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos = startY-i;
    }
  }

  void moveUpright(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX+i, startY+i);
      xpos = startX+i;
      ypos = startY+i;
    }
  }

  void moveUpleft(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX-i, startY+i);
      xpos = startX-i;
      ypos = startY+i;
    }
  }

  void moveDownright(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX+i, startY-i);
      xpos = startX+i;
      ypos = startY-i;
    }
  }

  void moveDownleft(float startX, float startY, float moveCount) {
    for (float i = 0; i<moveCount; i++) {
      point(startX-i, startY-i);
      xpos = startX+i;
      ypos = startY+i;
    }
  }
}