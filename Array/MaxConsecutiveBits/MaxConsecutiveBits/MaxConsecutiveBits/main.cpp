//
//  main.cpp
//  MaxConsecutiveBits
//
//  Created by Mayank Negi on 21/07/25.
//

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int maxConsecutiveBits(vector <int> &arr) {
    int maxCount = 0;
    int count = 0;
    int prev = -1;

    for(int num: arr) {
        if((prev ^ num) == 0) {
            count += 1;
        } else {
            maxCount = max(maxCount, count);
            count = 1;
        }
        prev = num;
    }

    return max(maxCount, count);
}

int main(int argc, const char * argv[]) {
    vector<int> arr = {0, 1, 0, 1, 1, 1, 1};
    cout << maxConsecutiveBits(arr) << endl;

    return 0;
}
