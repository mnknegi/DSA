//
//  main.cpp
//  PushZerosToEnd
//
//  Created by Mayank Negi on 21/07/25.
//

#include <iostream>
#include <vector>

using namespace std;

void pushZerosToEnd(vector<int> &arr) {
    int size = int(arr.size());
    int current = 0;

    for(int i = 0; i < size; i++) {
        if(arr[i] != 0) {
            swap(arr[i], arr[current]);
            current++;
        }
    }
}

int main(int argc, const char * argv[]) {
    vector<int> arr = {1, 2, 0, 4, 3, 0, 5, 0};
    pushZerosToEnd(arr);
    for(int num: arr) {
        cout << num << " ";
    }

    return 0;
}
