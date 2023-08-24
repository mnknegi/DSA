//
//  Pointer.cpp
//  Pointers
//
//  Created by Mayank Negi on 24/08/23.
//

#include "Pointer.hpp"
#include <iostream>

using namespace::std;

// pointer to a value
/*
int main() {
    int a = 10;
    int *p;
    p = &a;

    cout<<a<<endl;
    printf("using pointer %d", *p);

    return  0;;
}
*/

// pointer to a array

int main() {
    int A[5] = {2,4,6,8,10};
    int *p;
    p = A;  // Array is itself a pointer.

    for(int i = 0; i < 5; i++) {
//        cout<<A[i]<<endl;
        printf("%d \n", p[i]);
    }

    return  0;
}
