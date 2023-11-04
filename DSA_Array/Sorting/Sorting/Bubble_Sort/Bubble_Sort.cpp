//
//  Bubble_Sort.cpp
//  Sorting
//
//  Created by Mayank Negi on 31/10/23.
//

#include <iostream>
#include "Bubble_Sort.hpp"
#include "Log.hpp"
#include "Swap.hpp"

void Bubble_Sort::bubbleSort(int arr[], int size) {

    Log print;
    Swap swap;

    for(int step = 0; step < size; step++) {

        for(int j = 0; j < size - step - 1; j++) {

            if(arr[j] > arr[j + 1]) {
                swap.swap(&arr[j], &arr[j + 1]);
            }
        }
    }
    print.log(arr, size, "Bubble");
}
