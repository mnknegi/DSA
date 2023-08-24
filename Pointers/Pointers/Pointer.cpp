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
/*
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
*/

// Array created in Heap

int main() {
    int *p;
//    p = (int *)malloc(5 * sizeof(int));       // C style allocating of memory in Heap.
    p = new int[5];                             // C++ stype allocation of memory in Heap.

    p[0] = 2;
    p[1] = 4;
    p[2] = 6;
    p[3] = 8;
    p[4] = 10;

    for(int i = 0; i < 5; i++)
        cout<<p[i]<<endl;

//    free(p);                                    // release memory in Heap in C.
    delete [] p;                                  // release memory in Heap in C++;

    return 0;
}
