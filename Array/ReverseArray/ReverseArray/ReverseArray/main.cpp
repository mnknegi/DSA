//
//  main.cpp
//  ReverseArray
//
//  Created by Mayank Negi on 22/07/25.
//

#include <iostream>
#include <vector>

using namespace std;

void reverseInGroups(vector<int> &arr, int k) {
    int size = int(arr.size());

    for(int i = 0; i < size; i += k) {
        int left = i;
        int right = min(i + k - 1, size - 1);

        while (left < right) {
            swap(arr[left], arr[right]);
            left++;
            right--;
        }
    }
}

int main(int argc, const char * argv[]) {
    vector<int> arr1 = {1, 2, 3, 4, 5, 6, 7, 8};
    reverseInGroups(arr1, 3);
    for (int num: arr1) {
        cout << num << endl;
    }

    vector<int> arr2 = {1, 2, 3, 4, 5};
    reverseInGroups(arr2, 3);
    for (int num: arr2) {
        cout << num << endl;
    }

    vector<int> arr3 = {5, 6, 8, 9};
    reverseInGroups(arr3, 5);
    for (int num: arr3) {
        cout << num << endl;
    }

    return 0;
}
