
/*
 Maximum Subarray Sum – Kadane’s Algorithm

 Given an array arr[], the task is to find the subarray that has the maximum sum and return its sum.

 Examples:

 Input: arr[] = {2, 3, -8, 7, -1, 2, 3}
 Output: 11
 Explanation: The subarray {7, -1, 2, 3} has the largest sum 11.


 Input: arr[] = {-2, -4}
 Output: –2
 Explanation: The subarray {-2} has the largest sum -2.


 Input: arr[] = {5, 4, 1, 7, 8}
 Output: 25
 Explanation: The subarray {5, 4, 1, 7, 8} has the largest sum 25.
 */

/* Naive approach */
func maxSubArraySum(array: [Int]) {
    var result = array[0]
    for index_i in 0..<array.count {
        var currentSum = 0
        for index_j in index_i..<array.count {
            currentSum += array[index_j]
            result = max(result, currentSum)
        }
    }
    print("maximum sum of the subarray: \(result)") // time complexity: O(n^2) and space complexity O(1)
}

let array = [2, 3, -8, 7, -1, 2, 3]
maxSubArraySum(array: array)

let array1 = [-2, -4]
maxSubArraySum(array: array1)

let array2 = [5, 4, 1, 7, 8]
maxSubArraySum(array: array2)

// TODO: -
/* Using Kadane’s Algorithm – O(n) Time and O(1) Space */
// https://www.geeksforgeeks.org/largest-sum-contiguous-subarray/

