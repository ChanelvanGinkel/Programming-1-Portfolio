#include <iostream>
#include <string>
using namespace std;

int main () {
    std:: string str;
    char f[50];
    std:: string stz;
    char l[50];
    cout << "Full Name with only the last letter capitalized : ";
    cin >> f;
    cin >> l;
    
    
    str.append(f,2,10);
    str.append(f,1);
    str.append("ay");
    stz.append(l,2,10);
    stz.append(l,1);
    stz.append("ay");
    
    
    cout << "Your name in Pig Latin : " << str << " " << stz << '\n';
    return 0;
}