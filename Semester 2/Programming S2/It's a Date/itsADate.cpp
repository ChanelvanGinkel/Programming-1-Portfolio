#include <iostream>
#include <ctime>

int main () {
   time_t now = time(0);
   
   tm*ltm = localtime(&now);
   std::cout << 1900 + ltm->tm_year << "/" << 01 + ltm->tm_mon << "/" << ltm->tm_mday << std::endl;
}