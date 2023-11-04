//
//  Utility.cpp
//  Sorting
//
//  Created by Mayank Negi on 01/11/23.
//

#include <iostream>
#include "Log.hpp"

using namespace::std;

void Log::log(int array[], int size, string sort) {
    cout << "Array after " << sort << " Sorting: {";
    for(int i = 0; i < size; i++) {
        cout << array[i] << "\t";
    }
    cout << "}" << endl;
}
