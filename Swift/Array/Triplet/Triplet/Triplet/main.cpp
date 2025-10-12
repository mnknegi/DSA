//
//  main.cpp
//  Triplet
//
//  Created by Mayank Negi on 21/07/25.
//

#include <iostream>
#include <vector>
#include <climits>

using namespace std;

int maxProduct(vector<int> &arr) {
    int maxA = INT_MIN;
    int maxB = INT_MIN;
    int maxC = INT_MIN;

    int minA = INT_MAX;
    int minB = INT_MIN;

    int size = int(arr.size());

    for(int i = 0; i < size; i++) {
        if(arr[i] > maxA) {
            maxC = maxB;
            maxB = maxA;
            maxA = arr[i];
        } else if(arr[i] > maxB) {
            maxC = maxB;
            maxB = arr[i];
        } else if(arr[i] > maxC) {
            maxC = arr[i];
        }

        if(arr[i] < minA) {
            minB = minA;
            minA = arr[i];
        } else if(arr[i] < minB) {
            minB = arr[i];
        }
    }

    return  max(maxA * maxB * maxC, minA * minB * maxA);
}

int main(int argc, const char * argv[]) {
    vector<int> arr = {-10, -3, 5, 6, -20};
    cout << maxProduct(arr) << endl;

    return 0;
}
