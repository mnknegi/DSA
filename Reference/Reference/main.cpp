//
//  main.cpp
//  Reference
//
//  Created by Mayank Negi on 24/08/23.
//

#include<iostream>

using namespace std;

int main() {

    int a = 10;
    int &r = a;     // a's reference will be stored in r. Now r and a is same.

    cout<<"a is "<<a<<endl<<"and r is also "<<r<<endl<<endl;

    a = 25;
    cout<<"a is "<<a<<endl<<"and r is now also "<<r<<endl<<endl;

    r = 100;
    cout<<"Now r is "<<r<<endl<<"and a is now also "<<a<<endl;

    return 0;
}
