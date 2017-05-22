//Chanel van Ginkel
//1 March 2016
// OOP Inheritance
#include <iostream>
#include <string>
#include <cmath>
#include <math.h>

using namespace std;

// Super class
class Shape {
    public:
        void setWidth(int w) {   
            width = w;
        }
        void setHeight(int h) {
            height = h;
        }
        void setLength(int l) {
            length = l;
        }
        void setRadius(int r) {
            radius = r;
        }
    protected:
        int width;
        int height;
        int length;
        int radius;
};

// Sub Class for making Box
class Box: public Shape {
    public:
        int getbVol() {
            return (width * height * length);
        }
        int getbSur() {
            return (2*((width * length) + (height * length) + (height * width)));
        }
};

// Sub Class for making Sphere
class Sphere: public Shape {
    public:
        int getsVol() {
            return (4/3 * M_PI * (radius * radius * radius));
        }
        int getsSur() {
            return (4 * M_PI * (radius * radius));
        }
};

// Sub Class for making Pyramid
class Pyramid: public Shape {
    public:
        int getpVol() {
            return((length * width * height) /3);
        }
        int getpSur() {
            return(length * width + length * sqrt(((width/2)*(width/2)) + (height * height) + width) * sqrt(((length/2)*(length/2)) + height * height));
        }
};

// Sub Class for making Pyramid
class Cylinder: public Shape {
    public:
        int getcVol() {
            return(M_PI * (radius * radius) * height);
        }
        int getcSur() {
            return( 2*(M_PI*radius*height) + 2*(M_PI * (radius * radius)));
        }
    
};

int  main(void) {
    
    // Make Box
    Box Box1;
    
    Box1.setWidth(5);
    Box1.setHeight(6);
    Box1.setLength(7);
    
    cout << "Volume of the Box : " << Box1.getbVol() << endl;
    cout << "Surface Area of the Box : " << Box1.getbSur() << endl;
    
    // Make Sphere
    Sphere Sph;
    
    Sph.setRadius(8);
    
    cout << "Volume of the Sphere : " << Sph.getsVol() << endl;
    cout << "Surface Area of the Sphere : " << Sph.getsSur() << endl;
    
    // Make Pyramid
    Pyramid Pyr;
    
    Pyr.setWidth(9);
    Pyr.setHeight(10);
    Pyr.setLength(11);
    
    cout << "Volume of the Pyramid : "  << Pyr.getpVol() << endl;
    cout << "Surface Area of the Pyramid : " << Pyr.getpSur() << endl;
    
    // Make Cylinder
    Cylinder Cyl;
    Cyl.setHeight(12);
    Cyl.setRadius(13);
    
    cout << "Volume of the Cylinder : " << Cyl.getcVol() << endl;
    cout << "Surface Area of the Pyramid : " << Cyl.getcSur() << endl;
    return 0;
}

