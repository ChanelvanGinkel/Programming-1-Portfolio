// Chanel van Ginkel
// **Code sourced bu unknown**
// - Modified for all shapes to be in one file, math to be in the classes, and any other errors fixed.
#include <iostream>
#include <string>
#include <cmath>
#include <math.h>
using namespace std;

class Box{
    public:
        double length; //Length of the box
        double width;  //Width of the box
        double height; //Height of the box
        double bVolume(double length, double width, double height){
            double bVolumeR = length * width * height;
            return bVolumeR;
        }
        double bSurfaceArea(double length, double width, double height){
            double bSurfaceAreaR = 2*((width * length) + (height * length) + (height * width));
            return bSurfaceAreaR;
        }
        
        
};
class Pyramid{
    public:
        double length; //Length of the pyramid
        double width;  //Width of the pyramid
        double height; //Height of the pyramid
        double pVolume(double length, double width, double height){
            double pVolumeR = ((length * width * height) /3);
            return pVolumeR;
        }
        double pSurfaceArea(double length, double width, double height){
            double pSurfaceAreaR = length * width + length * sqrt(((width/2)*(width/2)) + (height * height) + width) * sqrt(((length/2)*(length/2)) + height * height);
            return pSurfaceAreaR;
        }
        
};
class Sphere{ //Capitalize Classes - Cvg
    public:
        double radius; //radius of the sphere
        double sVolume(double radius){
            double sVolumeR = 4/3 * (M_PI * radius * radius * radius);
            return sVolumeR;
        }
        double sSurfaceArea(double radius){
            double sSurfaceAreaR = 4/3 * (M_PI * radius * radius * radius);
            return sSurfaceAreaR; 
        }
     
        
};
class Cylinder{
    public:
        double radius;
        double height;
        double cVol(double radius, double height){
            double cVolr = M_PI * radius * radius * height;
            return cVolr;
        }
}

int main() {
    Box box1; //Declare box1
    
    double bVolume = 0.0; //Store the volume of the box
    double bSurfaceArea = 0.0;
    
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
    cout << "Volume : " << box1.bVolume(box1.height, box1.length, box1.width) << endl;
    cout << "Surface Area : " << box1.bSurfaceArea(box1.height, box1.length, box1.width) << endl;
    
    Pyramid pyramid1; //Declare pyramid1
    
    double pVolume = 0.0; //Store the volume of the pyramid
    double pSurfaceArea = 0.0; //Store the surface area of the pyramid
    
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
    cout << "Volume : " << pyramid1.pVolume(pyramid1.height, pyramid1.length, pyramid1.width) << endl;
    cout << "Surface Area : " << pyramid1.pSurfaceArea(pyramid1.height, pyramid1.length, pyramid1.width) << endl;
    
    Sphere sphere1; //Declare sphere
    
    double sVolume = 0.0; //Store the volume of the sphere
    double sSurfaceArea = 0.0; //Store the surfaceArea of the sphere - Cvg
    
    sphere1.radius;//Declare radius
     
    //User input of sphere dimensions
    cout << "Enter radius of the sphere :" << endl;
    cin >> sphere1.radius;
    cout << "Volume : " << sphere1.sVolume(sphere1.radius) << endl;
    cout << "Surface Area : " << sphere1.sSurfaceArea(sphere1.radius) << endl;
    return 0;
}