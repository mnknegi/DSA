//
//  main.cpp
//  ThirdLargest
//
//  Created by Mayank Negi on 21/07/25.
//

#include <iostream>
#include <vector>

using namespace std;

int getThirdLargest(vector <int> &array) {
    int size = int(array.size());

    int largest = INT_MIN;
    int secondLargest = INT_MIN;
    int thirdLargest = INT_MIN;

    for(int i = 0; i < size; i++) {
        if(array[i] > largest) {
            thirdLargest = secondLargest;
            secondLargest = largest;
            largest = array[i];
        } else if(array[i] > secondLargest) {
            thirdLargest = secondLargest;
            secondLargest = array[i];
        } else if(array[i] > thirdLargest) {
            thirdLargest = array[i];
        }
    }

    return thirdLargest;
}

int main(int argc, const char * argv[]) {
    // insert code here...
    vector<int> arr = {1, 14, 2, 16, 10, 20};
    cout << getThirdLargest(arr) << endl;
    
    return 0;
}
