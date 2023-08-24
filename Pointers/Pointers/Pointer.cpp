//
//  Pointer.cpp
//  Pointers
//
//  Created by Mayank Negi on 24/08/23.
//

#include "Pointer.hpp"
#include <iostream>

using namespace::std;

int main() {
    int a = 10;
    int *p;
    p = &a;

    cout<<a<<endl;
    printf("using pointer %d", *p);

    return  0;;
}
