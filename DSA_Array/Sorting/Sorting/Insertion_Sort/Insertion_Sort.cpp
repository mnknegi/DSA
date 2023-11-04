//
//  Insertion_Sort.cpp
//  Sorting
//
//  Created by Mayank Negi on 03/11/23.
//

#include "Insertion_Sort.hpp"
#include "Log.hpp"
#include "Swap.hpp"

void Insertion_Sort::insertionSort(int nums[], int size) {

    int temp;

    for(int i = 1; i< size; i++) {
        temp = nums[i];
        int j = i - 1;

        while (j >= 0 && temp <= nums[j]) {
            nums[j+1] = nums[j];
            j--;
        }
        nums[j+1] = temp;
    }

    Log print;
    print.log(nums, size, "Insertion");
}
