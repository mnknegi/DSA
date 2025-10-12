
/*
 Given a binary array arr[] consisting of only 0s and 1s, find the length of the longest contiguous sequence of either 1s or 0s in the array.

 Input: arr[] = [0, 1, 0, 1, 1, 1, 1]
 Output: 4
 Explanation: The maximum number of consecutive 1’s in the array is 4 from index 3-6.

 Input: arr[] = [0, 0, 1, 0, 1, 0]
 Output: 2
 Explanation: The maximum number of consecutive 0’s in the array is 2 from index 0-1.

 Input: arr[] = [0, 0, 0, 0]
 Output: 4
 Explanation: The maximum number of consecutive 0’s in the array is 4.
 */

/*
 Pseudo code:
 - Initialize two variables maxCount = 0 and currentCount = 1
 - Iterate through the array starting from index 1 and compare each element from the previous one.
 - If arr[index] == arr[Index - 1], increment currentCount by 1.
 - If they differ, update maxCount with max between maxCount and currentCount. Reset currentCount to 1.
 - Return maximum between maxCount and currentCount.
 */

func maxConsecutiveBits(arr: [Int]) -> Int {
    var maxCount = 0
    var currentCount = 1

    for index in 1..<arr.count {
        if arr[index] == arr[index - 1] {
            currentCount += 1
        } else {
            maxCount = max(maxCount, currentCount)
            currentCount = 1
        }
    }

    // OR
//    for index in 0..<arr.count - 1 {
//        if arr[index] == arr[index + 1] {
//            currentCount += 1
//        } else {
//            maxCount = max(maxCount, currentCount)
//            currentCount = 1
//        }
//    }

    return max(maxCount, currentCount)
}

let array = [0, 1, 0, 1, 1, 1, 1]
let array1 = [0, 0, 1, 0, 1, 0]
let array2 = [0, 0, 0, 0]
maxConsecutiveBits(arr: array)

// Best approach

/*
 Pseudo code:
 - Initialize 3 variables; maxCount = 0, currentCount = 0, prev = -1.
 - Traverse the array, use XOR to compare current item and prev.
 - XOR of both will produce 0 if equal and 1 if both differ.
 - if equal, increase currentCount by one for the current streak.
 - else get maxCount from maximum between maxCount and currentCount and reset currentCount to 1.
 - Update prev with current item.
 - Return maximum between currentCount and maxCount.
 */

func maxConsecutiveBitsXOR(arr: [Int]) -> Int {

    var maxCount = 0
    var currentCount = 0
    var prev = -1

    for item in arr {
        if (prev ^ item) == 0 {
            currentCount += 1
        } else {
            maxCount = max(maxCount, currentCount)
            currentCount = 1
        }
        prev = item
    }

    return max(maxCount, currentCount)
}

maxConsecutiveBitsXOR(arr: array2)
