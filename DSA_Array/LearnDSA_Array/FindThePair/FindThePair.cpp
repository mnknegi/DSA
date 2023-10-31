//
//  FindThePair.cpp
//  FindThePair
//
//  Created by Mayank Negi on 30/10/23.
//

#include <stdio.h>
#include <iostream>
#include <algorithm>
#include <unordered_map>
#include "FindThePair.hpp"

using namespace std;

// Using Brute-Force
// Time Complexity of this solution is O(n^{2}).

void FindThePair::findPairUsingBruteForce(int nums[], int length, int target) {

    // Consider each element except the last.
    for(int i = 0; i < length - 1; i++) {  // 8, 7, 2, 5, 3 ,1

        // Start from i'th element until the last element.
        for(int j = i + 1; j < length; j++) {

            if (target == nums[i] + nums[j]) {
                cout << "Pair found {" << nums[i] << ", " << nums[j] << "}\n" << endl;
                return;
            }
        }
    }
    cout << "Pair not found.\n";
}

// Using Sorting
// Time Complexity of this solution is O(n.log n).

void FindThePair::findPairUsingSorting(int nums[], int length, int target) {

    // Sort the array in ascending order.
    sort(nums, nums + length);

    // maintain two indices pointing to endpoints of the array.
    int low = 0;
    int high = length - 1;

    // Reduce search space [low...high] in each iteration of the loop.
    while (low < high) {

        if (nums[low] + nums[high] == target) {
            cout << "Pair found {" << nums[low] << ", " << nums[high] << "}\n" << endl;
            return;
        }

        // Increment `low` index if the total is `less` than the desired sum.
        // Decrement `high` index if the total is `more` than the desired sum.
        (nums[low] + nums[high] < target) ? low++ : high--;
    }
    cout << "Pair not found.\n";
}

// Using hashing
// The time complexity of the above solution is O(n).

void FindThePair::findPairUsingHashing(int nums[], int length, int target) {

    // Create an empty map.
    unordered_map<int, int> map;

    // Do for each element
    for(int i = 0; i < length; i++) {

        // Check if pair (nums[i], target - nums[i]) exist.
        // if the difference is seen before then print the pair.
        if (map.find(target - nums[i]) != map.end()) {
            cout << "Pair found {" << nums[i] << ", " << target - nums[i] << "}\n" << endl;
            return;
        }
        // Store index of current element in the map.
        map[nums[i]] = i;
    }
    cout << "Pair not found.";
}
