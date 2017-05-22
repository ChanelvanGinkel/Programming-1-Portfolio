#include <iostream>
using namespace std;

int main()
{
   int bottles = 99;
   while ( bottles > 0 ) {
      if (bottles < 2 && bottles > 0 ) {
         cout << bottles << " bottle of beer on the wall," << endl;
         cout << bottles << " bottle of beer on the wall," << endl;
         cout << "Take one down, pass it around," << endl;
         cout << --bottles << " bottles of beer on the wall." << '\n' << endl;
      }else{
         cout << bottles << " bottles of beer on the wall," << endl;
         cout << bottles << " bottles of beer on the wall," << endl;
         cout << "Take one down, pass it around," << endl;
         cout << --bottles << " bottles of beer on the wall." << '\n' << endl;
      }
      
   }
   
    return 0;
}