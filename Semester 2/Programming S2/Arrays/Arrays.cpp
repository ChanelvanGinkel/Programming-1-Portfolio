#include <iostream>
#include <array>
#include <vector>
#include <cstdlib>
#include <ctime>
using namespace std;
int main () {
    srand(time(0));
    int sides;
    int nDice;
    
    
   cout << "Number of sides on your dice : ";
   cin >> sides;
   cout << "Number of dice being rolled : ";
   cin >> nDice;
   
   array < int, 121 > dice1;
   
   for (int i=0; i < sides; i++) {
    dice1[i] = (i+1);
   }
   cout << "Numbers you rolled : " << endl;
   
   int i = 1;
        while(i <= nDice ) {
            int r = rand() % sides;
            cout << dice1[r] << endl;
            i++;
        }
        
   return 0;
}