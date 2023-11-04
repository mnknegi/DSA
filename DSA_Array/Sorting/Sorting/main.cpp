//
//  main.cpp
//  Sorting
//
//  Created by Mayank Negi on 31/10/23.
//

#include <iostream>
#include "Bubble_Sort.hpp"
#include "Selection_Sort.hpp"
#include "Insertion_Sort.hpp"

/// `Internal Sorting:` **When the data to be sorted can be adjusted in main memory itself without using another auxiliary memory, then we call it as internal sorting.**
///
/// `External Sorting:` **When we need auxiliary memory for sorting intermediate data when we call this as external sorting.**
///
/// `Bubble Sort:` Simplest technique in which we compare every element with its adjacent element and swap the element if they are not in order. In this way at the end of every iteration the heaviest element gets bubbled up at the end of the list.
///
/// `Selection Sort:` In this type of sorting we try to find the smallest item in the list and put it in its proper place. In each iteration, next smallest item is selected and placed in its proper place.
///
/// `Insertion Sort:` Insertion sort is a technique in which we compare second element to its previous one and place it in its proper place. In next pass fo reach element, we compare it to all its previous elements and insert the element at its proper place.


int main(int argc, const char * argv[]) {

    int nums[] = {12, 45, 8, 5, 16};
    int size = sizeof(nums)/sizeof(int);

    Bubble_Sort bubble_sort;
    bubble_sort.bubbleSort(nums, size);

    Selection_Sort selection_sort;
    selection_sort.selectionSort(nums, size);

    Insertion_Sort insertion_sort;
    insertion_sort.insertionSort(nums, size);

    return 0;
}
