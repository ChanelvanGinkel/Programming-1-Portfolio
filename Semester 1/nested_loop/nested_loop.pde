size(200,200);
noStroke();
for(int x = 0 ; x < width ; x += 10) {
  for( int y = 0; y < height; y += 10 ) {
    fill (random(0,255));//, random(0,255), random(0,255));
    rect(x,y,10,10);
  }
}