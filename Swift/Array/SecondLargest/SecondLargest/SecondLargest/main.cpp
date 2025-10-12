//
//  main.cpp
//  SecondLargest
//
//  Created by Mayank Negi on 21/07/25.
//

#include <iostream>
#include <vector>

using namespace std;

int getSecondLargest(vector <int> &array) {
    int size = int(array.size());

    int largest = -1;
    int secondLargest = -1;

    for(int i = 0; i < size; i++) {
        if(array[i] > largest) {
            secondLargest = largest;
            largest = array[i];
        } else if(array[i] > secondLargest && array[i] < largest) {
            secondLargest = array[i];
        }
    }
    return secondLargest;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    vector<int> arr = {12, 35, 1, 10, 34, 1};
    cout << getSecondLargest(arr);
    return 0;
}
