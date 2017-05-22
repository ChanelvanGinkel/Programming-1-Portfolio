String displayValue = "0";
String valueToCompute = "";
String valueToCompute2 = "";
float valueToComputeI = 0;
float valueToComputeI2 = 0;
float result = 0;
char opVal;
boolean firstNum;

Button[] numButtons = new Button[10];
Button[] opButtons = new Button[8];
Button[] spButtons = new Button[1];

void setup() {
  background(50, 50, 50);
  size(400, 320);
  strokeWeight(1);
  numButtons[0] = new Button(217, 175).asNumber(0, #333333, #000000, 217, 171, 260, 200, 206, 280, 162, 250);
  numButtons[1] = new Button(80, 80).asNumber(1, #4A5566, #000000, 80, 80, 125, 110, 98, 150, 55, 120);
  numButtons[2] = new Button(125, 113).asNumber(2, #4A5566, #000000, 125, 110, 171, 140, 143, 180, 98, 150);
  numButtons[3] = new Button(172, 142).asNumber(3, #4A5566, #000000, 170, 140, 217, 170, 190, 211, 143, 180);
  numButtons[4] = new Button(55, 120).asNumber(4, #4A5566, #000000, 54, 120, 98, 150, 72, 190, 27, 160);
  numButtons[5] = new Button(100, 150).asNumber(5, #4A5566, #000000, 98, 150, 143, 180, 117, 220, 72, 190);
  numButtons[6] = new Button(140, 180).asNumber(6, #4A5566, #000000, 143, 180, 190, 211, 162, 250, 117, 220);
  numButtons[7] = new Button(30, 158).asNumber(7, #4A5566, #000000, 27, 160, 72, 190, 45, 230, 0, 200);
  numButtons[8] = new Button(70, 185).asNumber(8, #4A5566, #000000, 72, 190, 117, 220, 90, 260, 45, 230);
  numButtons[9] = new Button(118, 220).asNumber(9, #4A5566, #000000, 117, 220, 162, 250, 135, 290, 90, 260);



  opButtons[0] = new Button(260, 160).asOperator("+", 60, 40, #464646, #FFFFFF);
  opButtons[1] = new Button(320, 160).asOperator("-", 60, 40, #464646, #FFFFFF);
  opButtons[2] = new Button(260, 200).asOperator("x", 60, 40, #464646, #FFFFFF);
  opButtons[3] = new Button(320, 200).asOperator("/", 60, 40, #464646, #FFFFFF);
  opButtons[4] = new Button(220, 80).asOperator("  =", 100, 40, #2F3540, #FFFFFF);
  opButtons[5] = new Button(320, 80).asOperator("C", 60, 40, #464646, #FFFFFF);
  opButtons[6] = new Button(300,120).asOperator("√", 40,40,  #464646, #FFFFFF);
  opButtons[7] = new Button(260,120).asOperator("x²",40,40, #5D6A7F, #FFFFFF);

  spButtons[0] = new Button(135, 290).asSpecial(".", #4A5566, #000000, 162, 250, 206, 280, 180, 320, 135, 290);  
  firstNum = true;
}

void draw() {
  fill(186, 212, 255);
  rect(20, 20, 300, 100);//display
  fill(93, 106, 127);
  rect(220, 80, 160, 200);//operators
  fill(140, 159, 191);

  quad(80, 80, 260, 200, 180, 320, 0, 200);//numbers
  fill(70);
  rect(260, 160, 120, 80);//+ - * /
  line(220, 200, 380, 200);
  line(220, 160, 260, 160);
  line(220, 240, 260, 240);
  line(320, 80, 320, 280);
  line(220, 120, 220, 280);
  line(40, 120, 380, 120);
  // num 0 - 9
  for (int i = 0; i<numButtons.length; i++) {
    Button inumButton = numButtons[i];
    inumButton.display();
  }

  for (int i = 0; i<opButtons.length; i++) {
    Button iopButton = opButtons[i];
    iopButton.display();
  }

  for (int i=0; i<spButtons.length; i++) {
    Button ispButton = spButtons[i];
    ispButton.display();
  }
  updateDisplay();
  stroke(140, 159, 191); //47, 53, 64
  line(125, 110, 45, 230);
  line(170, 140, 90, 260);
  line(217, 170, 135, 290);
  line(54, 120, 189, 211);
  line(26, 160, 206, 280);
  stroke(255);
}

void mousePressed() {
  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].hover();
    if (numButtons[i].over) {
      if (firstNum) {
        println(i + " " + numButtons[i].numVal);
        valueToCompute += int(numButtons[i].numVal);
        displayValue = valueToCompute;
      } else {
        valueToCompute2 += int(numButtons[i].numVal);
        displayValue = valueToCompute2;
      }
    }
  }
  for (int i = 0; i<opButtons.length; i++) {
    opButtons[i].hover();
    if (opButtons[i].over) {
      if (opButtons[i].opVal == "C") {
        displayValue = "0";
        opVal = 'C';
        valueToCompute = "";
        valueToCompute2 = "";
        valueToComputeI = 0;
        valueToComputeI2 = 0;
        result = 0;
        firstNum = true;
      } else if (opButtons[i].opVal == "  =") {
        firstNum = true;
        preformCalculation();
      } else if (opButtons[i].opVal == "+") {
        if (result != 0) {
          opVal = '+';
          valueToCompute2 = "";
          firstNum = false;
          displayValue = "+";
        } else {
          opVal = '+';
          firstNum = false;
          displayValue = "+";
        }
      } else if (opButtons[i].opVal == "-") {
        if (result != 0) {
          opVal = '-';
          firstNum = false;
          displayValue = "-";
        } else {
          opVal = '-';
          firstNum = false;
          displayValue = "-";
        }
      } else if (opButtons[i].opVal == "x") {
        if (result != 0) {
          opVal = 'x';
          firstNum = false;
          displayValue = "x";
        } else {
          opVal = 'x';
          firstNum = false;
          displayValue = "x";
        }
      } else if (opButtons[i].opVal == "/") {
        if (result != 0) {
          opVal = '/';
          firstNum = false;
          displayValue = "/";
        } else {
          opVal = '/';
          firstNum = false;
          displayValue = "/";
        }
      } else if (opButtons[i].opVal == "√") {
        if (result !=0) {
          opVal = '√';
          firstNum = false;
          displayValue = "√";
        } else {
           opVal =  '√';
           firstNum = false;
           displayValue = "√";
        }
        
      }
    }
  }
  for (int i = 0; i<spButtons.length; i++) {
    spButtons[i].hover();
    if (spButtons[i].over) {
      if (spButtons[i].spVal == "." ) {
        if (spButtons[i].over && firstNum == true) {
          valueToCompute += spButtons[i].spVal;
          displayValue = valueToCompute;
        } else if (spButtons[i].over && firstNum == false) {
          valueToCompute2 += spButtons[i].spVal;
          displayValue = valueToCompute2;
        }
      }
    }
  }
}

void preformCalculation() {
  valueToComputeI = float(valueToCompute);
  valueToComputeI2 = float(valueToCompute2);

  if (opVal == '+') {
    result = valueToComputeI + valueToComputeI2;
    displayValue = str(result);
  } else if (opVal == '-') {
    result = valueToComputeI - valueToComputeI2;
    displayValue = str(result);
  } else if (opVal == 'x') {
    result = valueToComputeI * valueToComputeI2;
    displayValue = str(result);
  } else if (opVal == '/') {
    result = valueToComputeI / valueToComputeI2;
    displayValue = str(result);
  } else if (opVal == '²') {
    displayValue = str(result);
    result = valueToComputeI * valueToComputeI;
  } else if (opVal == '√') {
    result = sqrt(valueToComputeI2);
    displayValue = str(result);
  } else if (opVal == 'n') {
    if (firstNum) {
      valueToComputeI = valueToComputeI*-1;
      displayValue = str(valueToComputeI);
    } else {
      valueToComputeI2 = valueToComputeI2*-1;
      displayValue = str(valueToComputeI);
    }
  }

  if (firstNum) {
    valueToCompute = displayValue;
  } else {
    valueToCompute = displayValue;
    valueToCompute2 = "";
  }
}

void updateDisplay() {
  //fill(47, 53, 64);
  //rect(220, 80, 100, 40);
  // rect();
  fill(0);
  textSize(22);
  text(displayValue, 30, 20, 280, 60);
}