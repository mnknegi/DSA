//
//  main.cpp
//  RotateArray
//
//  Created by Mayank Negi on 22/07/25.
//

#include <iostream>
#include <vector>

using namespace std;

void rotateArray(vector<int> &arr, int d) {

    int size = int(arr.size());

    d %= size;

    reverse(arr.begin(), arr.begin() + d);

    reverse(arr.begin() + d, arr.end());

    reverse(arr.begin(), arr.end());
}

int main(int argc, const char * argv[]) {
    vector<int> arr = {1, 2, 3, 4, 5, 6};
    rotateArray(arr, 2);

    for (int num: arr) {
        cout << num << endl;
    }

    return 0;
}
