// Chanel van Ginkel
// 03.02.16
// Inheritance Assignment
//

#include <iostream>

using namespace std;

// Super Class
class Pay {
    public:
        void setHours(int h) {
            hours = h;
        }
        void setPay(float p) {
            pay = p;
        }
    protected:
        int hours;
        float pay;
};

// Sub class
class Manager: public Pay {
    public:
        int getMwage() {
            return (hours * pay);
        }
};

// Sub class
class Hostess: public Pay {
    public:
        int getHwage() {
            return (hours * pay);
        }
};

// Sub class
class Server: public Pay {
    public:
        int getSwage() {
            return (hours * pay);
        }
   
};
bool runCode = true;
int main(void) {
    int val = 0;
    int valu = 0;
    
    while(runCode == true){
        cout << "CALCULATING WAGES: \n For MANAGER enter 1 \n For HOSTESS enter 2 \n For SERVER enter 3 \n : ";
        cin >> valu;
        if (valu == 1) {
            Manager man;
            man.setPay(23.41);
    
            cout << "Hours your MANAGER has worked : ";
            cin >> val;
            man.setHours(val);
            cout << "Calculated wage : $" << man.getMwage() << endl;
            cout << "Would you like to calculate for another employee? \n For YES enter 1 \n For NO enter 2 \n : ";
            cin >> val;
            if(val == 1){
                runCode = true;
            }else if (val == 2){
                runCode = false;
            }
        
        
        } else if (valu == 2) {
            Hostess hos;
            hos.setPay(9.50);
            hos.setHours(20);
            cout << "Hours your HOSTESS has worked : ";
            cin >> val;
            hos.setHours(val);
            cout << "Calculated wage : $" << hos.getHwage() << endl;
            cout << "Would you like to calculate for another employee? \n For YES enter 1 \n For NO enter 2 \n : ";
            cin >> val;
            if(val == 1){
                runCode = true;
            }else if (val == 2){
                runCode = false;
            }
        } else if (valu == 3) {
            Server ser;
            ser.setPay(7.50);
            ser.setHours(20);
            cout << "Hours you SERVER has worker : ";
            cin >> val;
            ser.setHours(val);
            cout << "Calculated wage : $" << ser.getSwage() << endl;
            cout << "Would you like to calculate for another employee? \n For YES enter 1 \n For NO enter 2 \n : ";
            cin >> val;
            if(val == 1){
                runCode = true;
            }else if (val == 2){
                runCode = false;
            }
        
        } else {
            cout << "Input value not valid..." << endl;
                runCode = false;
        }
        
    }
    

    return 0;
    
}



