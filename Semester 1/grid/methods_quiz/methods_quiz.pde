void draw(){
  println(halfVal(10));
}

int doubleVal(int val) {
  val = val*2;
  return val;
}


float calcCircumf (float radius ) {
  float cir = (radius*2)*3.14;
  return cir;
}

boolean isNegative( float numb) {
  boolean neg;
  if( numb > 0) {
    neg = false;
  } else {
    neg = true;
  }
  return neg;
}

float halfVal( float val ) {
  val = val/2;
  return val;
}