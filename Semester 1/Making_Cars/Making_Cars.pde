//creating a car object
Car c1;
Car c2;
Car[] cars = new Car[1000];

void setup() {
  size(displayWidth,displayHeight);
  c1 = new Car();
  c2 = new Car();
  for (int i = 0; i < cars.length; i++) {
    cars[i] =  new Car();
    
    }
  }
void draw() {
      background(0);
      c1.drive();
      c1.display();
      c2.drive();
      c2.display();
      for (int i = 0; i < cars.length; i++) {
      cars[i].display();
      cars[i].drive();
      }
}