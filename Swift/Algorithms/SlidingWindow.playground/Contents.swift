
/** Sliding Window(Two pointer) */
// Maintain a window(subarray or substring)

/*
 How It Works
1️⃣ Start with a fixed or variable-sized window (a subarray or substring).
2️⃣ Expand or shrink the window as needed while keeping track of important values (sum, max, min, etc.).
3️⃣ Slide the window by removing the first element and adding the next element instead of recalculating from scratch.
 */

/*
 🔹 Types of Sliding Window
 1️⃣ Fixed-size Sliding Window → The window size remains constant.
 Example: Finding the maximum sum of k consecutive elements in an array.

 2️⃣ Variable-size Sliding Window → The window expands or contracts dynamically.
 Example: Finding the smallest subarray with a sum greater than or equal to S.
 */

/* Question 1 */
// Find the maximum sum of k consecutive elements in an array.
func maxSumSlidingWindow(arr: [Int], size: Int) -> Int {
    guard arr.count >= size else {
        return 0
    }

    var windowSum = arr[0..<size].reduce(0, +) // sum of first `k` elements.
    var maxSum = windowSum

    // loop from size to end of array.
    for index in size..<arr.count {

        // current window sum.
        windowSum += arr[index] - arr[index - size]

        // maximum result.
        maxSum = max(maxSum, windowSum)
    }

    return maxSum
}

let arr = [2, 1, 5, 1, 3, 2]
let windowSize = 3
let maximum = maxSumSlidingWindow(arr: arr, size: windowSize)
//print(maximum)

// time complexity: O(n)

/* Question 2 */
// Find the smallest subarray with sum ≥ S.
// Approach: Expand the window until sum ≥ S, then shrink it to minimize length.
func minSubArrayLen(arr: [Int], target: Int) -> Int {
    var leftIndex = 0
    var sum = 0
    var minLength = Int.max // to shrink it to minimum lenght.

    // loop through 0 to arr.count.
    for rightIndex in 0..<arr.count {

        // add elements one by one from left end.
        sum += arr[rightIndex]

        // if sum is less than target, skip while loop otherwise enter while loop.
        while sum >= target {
            // get min length between previous minLenght and current window.
            minLength = min(minLength, rightIndex - leftIndex + 1)

            // remove element from left end
            sum -= arr[leftIndex]

            // leftIndex increament.
            leftIndex += 1
        }
    }
    return minLength
}

//print(minSubArrayLen(arr: [2, 4, 3, 1, 2, 4, 3], target: 7))


/*
 Given an array arr[] containing only non-negative integers, your task is to find a continuous subarray (a contiguous sequence of elements) whose sum equals a specified value target. You need to return the 1-based indices of the leftmost and rightmost elements of this subarray. You need to find the first subarray whose sum is equal to the target.

 Note: If no such array is possible then, return [-1].
 */
func subArraySum(arr: [Int], target: Int) -> [Int] {
    var leftIndex = 0
    var sum = 0

    for rightIndex in 0..<arr.count {
        sum += arr[rightIndex] // Expand the window

        while sum > target && leftIndex < rightIndex {
            sum -= arr[leftIndex] // Shrink the window
            leftIndex += 1
        }

        if sum == target {
            return [leftIndex + 1, rightIndex + 1]
        }
    }
    return [-1]
}

// Example Usage:
let array = [1, 2, 3, 7, 5]
let target = 12
//print(subArraySum(arr: array, target: target))
// time complexity: O(n), auxiliary space: O(1)
