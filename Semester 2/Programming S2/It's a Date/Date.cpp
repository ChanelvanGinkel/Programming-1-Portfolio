// Chanel van Ginkel - January 31 17
#include <iostream>
#include <ctime>

using namespace std;

int main () {
    time_t now = time(0);
    
    char * dt = ctime (&now);
    cout << "The local date and time is: " << dt << endl;
    tm * gmtm = gmtime(&now);
    dt = asctime (gmtm);
    cout << "The UTC date and time is: " << dt << endl;
    cout << "In Chanel's time it is: June 20 13:07:31 2001" << endl;


}