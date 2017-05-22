// Altered by Chanel van Ginkel - 24 Feb. 2017
// Cvg = added or altered by Chanel van Ginkel

#include <iostream>
#include<cmath>
#include<math.h>
using namespace std;

class pyramid{
    public:
        double length; //Length of the pyramid
        double width;  //Width of the pyramid
        double height; //Height of the pyramid
        
};
int main(){
    pyramid pyramid1; //Declare pyramid1
    double volume = 0.0; //Store the volume of the pyramid
    double surfaceArea = 0.0; //Store the surface area of the pyramid - Cvg
    pyramid1.length;
    pyramid1.width;
    pyramid1.height;
    
    //User input of pyramid dimensions
    cout << "Enter length of the pyramid:" << endl;
    cin >> pyramid1.length;
    cout << "Enter width of the pyramid:" << endl;
    cin >> pyramid1.width;
    cout << "Enter height of the pyramid:" << endl;
    cin >> pyramid1.height;
    
     //Volume of pyramid 1
    volume = ((pyramid1.length * pyramid1.width * pyramid1.height) /3);
    cout << "Volume of pyramid:" << volume << endl;
    
    //Surface area of a pyramid
    surfaceArea = pyramid1.length * pyramid1.width + pyramid1.length * sqrt(((pyramid1.width/2)*(pyramid1.width/2)) + (pyramid1.height * pyramid1.height) + pyramid1.width) * sqrt(((pyramid1.length/2)*(pyramid1.length/2)) + pyramid1.height * pyramid1.height);
    cout << "Surface Area of pyramid:" << surfaceArea << endl;
    return 0;
    
}