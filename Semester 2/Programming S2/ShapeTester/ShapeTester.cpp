//Chanel van Ginkel
// 02/22/17
// Shape Tester
//
//
//
#include <iostream>
#include <string>
#include <cmath>
#include <math.h>
using namespace std;

class Box {
    public:
        double length;
        double width;
        double height;
    double bVol(double lenght, double width, double height) { // box volume
            double bVolr = height * length * width;
            return bVolr;
        // have surface area on my computer at home
       }
       
    
};

class Pyramid {
    public:
        double length;
        double width;
        double height;
    double pVol( double length, double width, double height) { // pyramid volume
        double pVolr = (height * length * width)/3;
        return pVolr;
    //have surface area on my computer at home
    }
};

class Sphere {
    public:
        double radius;
    double sVol(double radius ) { // sphere volume
        double sVolr= (4.0/3) * 3.14 * radius * radius * radius;
        return sVolr;
    }
    double sArea(double radius ) { // sphere suraface area 
         double sArear = 4.0 * 3.14 * radius * radius;
         return sArear;
    }
};

int main( ) {
    cout << "Let's find the volume and area of some shapes! \n First a Box." << endl;
    
    Box Box1;
    double bVol = 0.0;
    Box1.height;
    Box1.length;
    Box1.width;
    cout << "Box Height : ";
    cin >> Box1.height;
    cout << "Box length : ";
    cin >> Box1.length;
    cout << "Box width : ";
    cin >> Box1.width;
    cout << "Volume of the Box : " << Box1.bVol(Box1.height, Box1.length, Box1.width) << endl;
    cout << "Now lets try a Pyramid. " << endl;
    
    Pyramid Pyr1;
    double pVol = 0.0;
    Pyr1.height;
    Pyr1.length;
    Pyr1.width;
    cout << "Height of Pyramid : ";
    cin >> Pyr1.height;
    cout << "Length of Pyramid : ";
    cin >> Pyr1.length;
    cout << "Breadth of Pyramid : ";
    cin >> Pyr1.width;
    cout << "Volume of Pyramid : " << Pyr1.pVol(Pyr1.height, Pyr1.length, Pyr1.width) << endl;
    cout << "Next a Sphere." << endl;
    
    Sphere Sph1;
    double sVol = 0.0;
    double sArea = 0.0;
    Sph1.radius;
    cout << "Sphere radius : ";
    cin >> Sph1.radius;
    cout << "Volume of Sphere : " << Sph1.sVol(Sph1.radius) << endl;
    
    return 0;
}