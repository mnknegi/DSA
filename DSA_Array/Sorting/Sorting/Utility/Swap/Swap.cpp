//
//  Swap.cpp
//  Sorting
//
//  Created by Mayank Negi on 03/11/23.
//

#include "Swap.hpp"

void Swap::swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}
