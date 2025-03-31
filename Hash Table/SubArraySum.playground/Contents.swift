
/** SubArray Sum */
/*
 Implement a function called subarraySum() that finds a continuous subarray within a given vector of integers that adds up to a specific target number.

 Input:
 The function takes the following inputs:
 A constant reference to a vector of integers nums.
 An integer target.

 Output:
 The function should return a vector of two integers representing the start and end indices (inclusive) of the continuous subarray in the input vector nums that adds up to the target value. If no such subarray exists, the function should return an empty vector.

 Examples:
 Consider the following input vector and target:
 nums: {1, 2, 3, 4, 5}
 target: 9
 After calling subarraySum(nums, target), the result should be:
 {1, 3}
 */

let numbers = [1, 2, 3, 4, 5]
func subArraySum(target: Int) -> [Int] {

    var sumIndex: [Int: Int] = [:]
    var currentSum = 0

    sumIndex[0] = -1 // // Handles cases where subarray starts at index 0.

    for (index, num) in numbers.enumerated() {
        currentSum += num
        if let startIndex = sumIndex[currentSum - target] {
            return [startIndex + 1, index]
        }
        sumIndex[currentSum] = index
    }
    return []
}

subArraySum(target: 9)

func subArraySum_slidingWindowApproach(target: Int) -> [Int] {
    var leftIndex = 0
    var currentSum = 0

    for rightIndex in 0..<numbers.count { // expand
        currentSum += numbers[rightIndex]

        while(currentSum > target) { // shrink
            currentSum -= numbers[leftIndex]
            leftIndex += 1
        }

        if currentSum == target {
            return [leftIndex, rightIndex]
        }
    }
    return []
}

subArraySum_slidingWindowApproach(target: 9)
