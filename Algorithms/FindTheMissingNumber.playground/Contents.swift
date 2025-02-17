
/* Find the missing number

 Given an array arr[] of size n-1 with distinct integers in the range of [1, n]. This array represents a permutation of the integers from 1 to n with one element missing. Find the missing element in the array.

 Examples:

 Input: arr[] = [1, 2, 4, 6, 3, 7, 8]
 Output: 5
 Explanation: Here the size of the array is 7, so the range will be [1, 8]. The missing number between 1 to 8 is 5


 Input: arr[] = [1, 2, 3, 5]
 Output: 4
 Explanation: Here the size of the array is 4, so the range will be [1, 5]. The missing number between 1 to 5 is 4
 */

func findMissingNumber(array: [Int]) {

    // array size should be 1 more than given.
    let size = array.count + 1

    // expected sum will all elements.
    let expectedSum = size * (size + 1) / 2

    // actual sum of all the elements in array.
    var actualSum = 0
    for index in 0..<array.count {
        actualSum += array[index]
    }

    print("missing number: \(expectedSum - actualSum)")
}

let array = [1, 2, 4, 6, 3, 7, 8]
findMissingNumber(array: array)

let array1 = [1, 2, 3, 5]
findMissingNumber(array: array1)
