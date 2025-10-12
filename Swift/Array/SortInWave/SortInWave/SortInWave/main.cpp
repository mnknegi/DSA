//
//  main.cpp
//  SortInWave
//
//  Created by Mayank Negi on 27/07/25.
//

#include <iostream>
#include <vector>

using namespace std;

void sortInWave(vector<int> &arr) {
    int size = int(arr.size());
    int currentIndex = 0;

    while(currentIndex < size - 1) {
        swap(arr[currentIndex], arr[currentIndex + 1]);
        currentIndex += 2;
    }

//    for(int i = 0; i < size - 1; i += 2) {
//        swap(arr[i], arr[i + 1]);
//    }
}

int main(int argc, const char * argv[]) {
    vector<int> arr = {1, 2, 3, 4, 5};
    sortInWave(arr);
    for(int num: arr) {
        cout << num << endl;
    }

    cout << "-----------------" << endl;

    vector<int> arr1 = {2, 4, 7, 8, 9, 10};
    sortInWave(arr1);
    for(int num: arr1) {
        cout << num << endl;
    }

    return 0;
}
