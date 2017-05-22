// Altered by Chanel van Ginkel - 24 Feb. 2017
// Cvg = added or altered by Chanel van Ginkel

#include <iostream>
#include<cmath>
#include<math.h>
using namespace std;

class Sphere{ //Capitalize Classes - Cvg
    public:
        double radius; //radius of the sphere
     
        
};
int main(){
    Sphere sphere1; //Declare sphere
    double volume = 0.0; //Store the volume of the sphere
    double surfaceArea = 0.0; //Store the surfaceArea of the sphere - Cvg
    sphere1.radius;//Declare radius
     
    //User input of sphere dimensions
    cout << "Enter radius of the sphere :" << endl;
    cin >> sphere1.radius; 
    
    //Volume of sphere
    volume = 4/3 * (M_PI * sphere1.radius * sphere1.radius * sphere1.radius);
    cout << "Volume: "<< volume << endl;
    
    //Surface area of sphere
    surfaceArea = 4 * (M_PI *sphere1.radius * sphere1.radius);
    cout << "Surface Area: "<< surfaceArea << endl;
    return (0); // Cvg
}
    