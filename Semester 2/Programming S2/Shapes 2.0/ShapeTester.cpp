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
    double bvol(double lenght, double width, double height) { // box volume
            double bvolr = height * length * width;
            return bvolr;
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
    //cout << "Let's find the volume and area of some shapes! /n First a Box." << endl;
    
    Box Box1;
    double bvol = 0.0;
    Box1.height;
    Box1.length;
    Box1.width;
    cout << "Box 1 Height : ";
    cin >> Box1.height;
    cout << "Box 1 length : ";
    cin >> Box1.length;
    cout << "Box 1 width : ";
    cin >> Box1.width;
    cout << "Volume of Box1 : " << Box1.bvol(Box1.height, Box1.length, Box1.width) << endl;
    
    Pyramid Pry1;
    double pVol = 0.0;
    Pry1.height;
    Pry1.length;
    Pry1.width;
    cout << "Height of Pyramid 1 : ";
    cin >> Pry1.height;
    cout << "Length of Pyramid 1 : ";
    cin >> Pry1.length;
    cout << "Breadth of Pyramid 1 : ";
    cin >> Pry1.width;
    cout << "Volume of Pyramid 1 : " << Pry1.pVol(Pry1.height, Pry1.length, Pry1.width) << endl;
    
    Sphere Sph1;
    double sVol = 0.0;
    double sArea = 0.0;
    Sph1.radius;
    cout << "Sphere 1 radius : ";
    cin >> Sph1.radius;
    cout << "Volume of Sphere 1 : " << Sph1.sVol(Sph1.radius) << endl;
    
    return 0;
}