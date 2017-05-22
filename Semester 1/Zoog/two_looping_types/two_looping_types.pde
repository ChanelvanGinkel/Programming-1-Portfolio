
for(int i=0;i<100;i+=10) {
  line(0,i,width,i);
}

int i = 0;
while (i < 100) {
  line(i,0,i,height);
//  stroke(255,0,0);
//  line(i,0,height,i);
//  line(0,i,i,width);
//  stroke(0);
  i +=10;
}