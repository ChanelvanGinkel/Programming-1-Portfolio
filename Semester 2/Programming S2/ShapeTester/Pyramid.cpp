#include <iostream>

using namespace std;

class Pyramid {
    public:
        double length;
        double breadth;
        double height;
};

int main( ) {
    Pyramid Pry1;
    double volume = 0.0;
    
    cout << "Height of Pyramid 1 : ";
    cin >> Pry1.height;
    cout << "Length of Pyramid 1 : ";
    cin >> Pry1.length;
    cout << "Breadth of Pyramid 1 : ";
    cin >> Pry1.breadth;
    
    volume = (Pry1.height * Pry1.length * Pry1.breadth) /3;
    cout << "Volume of Pyramid 1 : " << volume << endl;
    return 0;
}
// surface area = lw+l rt((w/2)^2+h^2 +w) rt((1/2)^2+h^2)