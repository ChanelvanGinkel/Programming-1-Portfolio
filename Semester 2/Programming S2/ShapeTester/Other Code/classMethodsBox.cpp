#include <iostream>

using namespace std;

class Box{
    public:
        double length; //Length of the box
        double width;  //Width of the box
        double height; //Height of the box
        
};
int main(){
    Box box1; //Declare box1
    double volume = 0.0; //Store the volume of the box
    double surfaceArea = 0.0;
    box1.length;
    box1.width;
    box1.height;
    //User input of box dimensions
    cout << "Enter length of the box" << endl;
    cin >> box1.length;
    cout << "Enter width of the box" << endl;
    cin >> box1.width;
    cout << "Enter height of the box" << endl;
    cin >> box1.height;   
    
      //Volume of box 1
    volume = box1.length * box1.width * box1.height;
    cout << "Volume of box 1 : " << volume << endl;
    //Surface area of box1
    surfaceArea = 2*((box1.width * box1.length) + (box1.height * box1.length) + (box1.height * box1.width));
    cout << "Surface Area of box 1 : " << surfaceArea << endl;
    return 0;
}