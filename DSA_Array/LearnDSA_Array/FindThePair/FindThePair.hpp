//
//  FindThePair.hpp
//  FindThePair
//
//  Created by Mayank Negi on 30/10/23.
//

#ifndef FindThePair_hpp
#define FindThePair_hpp

#include <stdio.h>

class FindThePair
{
public:
    void findPairUsingBruteForce(int nums[], int length, int target);
    void findPairUsingSorting(int nums[], int length, int target);
    void findPairUsingHashing(int nums[], int length, int target);
};

#endif /* FindThePair_hpp */
