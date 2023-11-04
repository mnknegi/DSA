//
//  Selection_Sort.cpp
//  Sorting
//
//  Created by Mayank Negi on 31/10/23.
//

#include <iostream>
#include "Selection_Sort.hpp"
#include "Log.hpp"
#include "Swap.hpp"

// Time complexity O(n^2)

void Selection_Sort::selectionSort(int arr[], int size) {

    Log print;
    Swap swap;

    for(int step = 0; step < size; step++) {

        int min = step;

        for(int i = step; i < size - step - 1; i++) {

            if(arr[min] > arr[i + 1]) {
                min = i + 1;
            }
        }
        swap.swap(&arr[step], &arr[min]);
    }
    print.log(arr, size, "Selection");
}
