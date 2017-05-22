/*//problem 1
int[] nums = {5,4,2,7,6,8,5,2,8,14};
  for (int i = 0; i < nums.length ; i++) {
  nums[i] *= nums[i];
  println(nums[i]);
}

//problem 2
for (int i = 0 ; i < nums.length ; i++) {
  nums[i] += int (random(11));
  println(nums[i]);
}

//problem 3
for (int i = 0 ; i < nums.length-1 ; i++) {
  nums[i] += nums[i+1];
  println(nums[i]);
}

//problem 4
int sum = 0;
for (int i = 0 ; i < nums.length ; i ++) {
  sum += nums[i];
  //nums[0] += nums[9] += nums[8] += nums[7] += nums[6] += nums[5] += nums[4] += nums[3] += nums[2] += nums[1] += nums[0] -= nums[i];
  //println(nums[i]);
}
println(sum);*/

//problem 5
int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200,200);
}

void draw() {
  /*background(255);
  stroke(0);
  if (mouseX >= x && mouseX <= w+x && mouseY >= y && mouseY <= h+y){
    fill(0,0,255);
  } else {
    fill(255,0,0);
  }
  rect(x,y,w,h);*/
}