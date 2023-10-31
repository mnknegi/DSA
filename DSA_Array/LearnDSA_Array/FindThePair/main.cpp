//
//  main.cpp
//  FindThePair
//
//  Created by Mayank Negi on 30/10/23.
//

#include <iostream>
#include "FindThePair.hpp"

/// **Find a pair with the given sum in an array**
///
/// **_Given an unsorted integer array, find a pair with the given sum in it._**
///
/// Input:
/// nums = [8, 7, 2, 5, 3, 1]
/// target = 10
/// Output:
/// Pair found (8, 2)
/// or
/// Pair found (7, 3)
/// Input:
/// nums = [5, 2, 6, 8, 1, 9]
/// target = 12
/// Output: Pair not found

using namespace std;

int main(int argc, const char * argv[]) {

    FindThePair findPair;
    int nums[] = {8, 7, 2, 5, 1, 3};
    int length = sizeof(nums)/sizeof(int);

//     findPair.findPairUsingBruteForce(nums, length, 10);
//    findPair.findPairUsingSorting(nums, length, 10);
    findPair.findPairUsingHashing(nums, length, 10);

    return 0;
}
