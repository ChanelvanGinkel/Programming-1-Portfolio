//Nick Duval
// Brooks Boyack /=====\ 2-22-17
//                 <|>
//                  |
// added encapsulation ,volume for sphere, pyramid, and dodeceaherdron. Placed volume and suface area call inside Class. Put all of the shapes together.

#include <iostream>
#include <string>
#include <cmath>
#include <math.h>
using namespace std;

class Box {
    public:
    protected:
        double bx;
        double by;
        double bz;
    public:
        double boxVol(double bx , double by, double bz){
        double vResult = bx * by * bz;
        return vResult;
        }
        double boxSur(double bx , double by, double bz){
        double sResult = 2 * (by*bx+by*bz+bz*bx);
        return sResult;
        }
};
class Sphere{
    protected:
        double r;
    public:
    double sVol(double r)  {
        double result = ((4.0 / 3.0) * M_PI * (r * r * r));
        return result; 
    }
    double sSur(double r){
        double result= 4.0 * M_PI * pow(r,2);
        return result;
    }
};
class Pyramid{
   protected:
        double l;
        double w;
        double h;
   public:
    double pVol(double l, double w, double h){
        double result= (l*w*h)/3;
        return result;
    }
    double  pSur(double l, double w, double h){
        double result= l * w + l * sqrt( pow (w / 2, 2) + pow(h, 2)) + w * sqrt(pow(l/2,2)+ pow(h, 2));
        return result;
    }
};
class Dodeca{
   protected:
      double e;
   public:
      double dVol(double e){
         double result= (((15+7)*sqrt(5))/4) * pow (e,3);
         return result;
      }
     double dSur(double e){
      double result = 3*sqrt(25+(10 * sqrt(5))) * pow(e,2);
      return result;
     }
};

int main( ) {
    
   Box B1;
   double bVolume = 0.0;
   double bSurface = 0.0;
   B1.bx;
   B1.by;
   B1.bz;
   Pyramid P1;
   double pVolume = 0.0;
   double pSurface = 0.0;
   P1.l;
   P1.w;
   P1.h;
   Sphere S1;
   double sVolume = 0.0;
   double sSurface = 0.0;
   S1.r;
   Dodeca D1;
   double dVolume = 0.0;
   double dSurface = 0.0;
   D1.e;
   //box
   cout << "what is the height of the box?" << endl;
   cin >> B1.bz;
   cout << "what is the length of the box?" << endl;
   cin >> B1.by;
   cout << "what is the width of the box?" << endl;
   cin >> B1.bx;
	
   // volume of box 1
    cout << "Volume = " << B1.boxVol(B1.bz,B1.bx,B1.by) << endl;
    cout << "Surface area = " << B1.boxSur(B1.bx,B1.by,B1.bz)  <<endl;
    

    //sphere
    cout << "What is the Radius of your Sphere?"<< endl;
    cin >> S1.r;
    cout << "Volume = " << S1.sVol(S1.r) << endl;
    cout << "Surface area = " << S1.sSur(S1.r) << endl;
    

    // pyramid. 
    cout << "What is the Legth of the Base of the Pyramid?" << endl;
    cin >> P1.l;
    cout << "What is the Width of the Base of the Pyramid?" << endl;
    cin >> P1.w;
    cout << "What is the Height of your Pyramid?"<< endl;
    cin >> P1.h;
    cout << "Volume = " << P1.pVol(P1.l,P1.w,P1.h) << endl;
    cout << "Surface area = " << P1.pSur(P1.l,P1.w,P1.h) << endl;
    
    // dodeca
    cout << "What is the length of one edge of your Dodecahedron?" << endl;
    cin >> D1.e;
    cout << "Volume = " << D1.dVol(D1.e) << endl;
    cout << "Surface area = " << D1.dSur(D1.e) << endl;

    return 0;
}