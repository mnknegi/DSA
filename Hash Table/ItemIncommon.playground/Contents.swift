
/** Item in common */

/*
 Implement a function called itemInCommon() that checks if two input vectors have at least one common item.

 Input:
 The function takes two vectors of integers as input parameters:
 vect1: a vector of integers
 vect2: a vector of integers

 Output:
 The function should return a boolean value indicating whether the two input vectors have at least one item in common or not.
 */

let arr1 = [1, 3, 5]
let arr2 = [2, 4, 5]

func itemInCommon() -> Bool {
    var dict: [Int: Bool] = [:]
    for item in arr1 { // O(n)
        dict[item] = true
    }

    for item in arr2 { // O(m)
        if let temp = dict[item], temp {
            return true
        }
    }
    return false
}

itemInCommon()
/* Time Complexity: O(n+m) */
