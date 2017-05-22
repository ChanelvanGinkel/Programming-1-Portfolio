#include <iostream>
#include <cmath>
using namespace std;

class Sphere {
    public:
        double radius;
};

int main( ) {

    Sphere Sph1;
    double volume = 0.0;
    double area = 0.0;
    
    cout << "Sphere 1 radius : ";
    cin >> Sph1.radius;
    
    
    volume = (4.0/3) * 3.14 * Sph1.radius * Sph1.radius * Sph1.radius;
    cout << "Volume of Sphere 1 : " << volume << endl;
    
    area = 4.0 * 3.14 * Sph1.radius * Sph1.radius;
    return 0;
    
}


//surface area = 4*pie*r^2

















