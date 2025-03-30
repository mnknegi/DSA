
/** Two Sum */
/*
 Implement a function called twoSum() that finds two numbers in a given vector of integers that add up to a specific target number.

 If there are two pairs of numbers that sum to the target it is assumed that you're looking for the first pair of numbers that sum to the target, based on their position in the array (an example is given below).

 Input:
 The function takes the following inputs:
 - A constant reference to a vector of integers nums.
 - An integer target.

 Output:
 The function should return a vector of two integers representing the indices of the two numbers in the input vector nums that add up to the target value. If no such pair exists, the function should return an empty vector.

 Consider the following input vector and target:
 nums: {1, 3, 4, 2, 5};
 target: 6;
 There are two combinations that add up to 6 which are:

 {2, 3} and {0, 4}
 After calling twoSum(nums, target), the result should be the first pair of numbers that sum to the target:

 {2, 3}
 */

let numbers = [1, 2, 3, 4, 5]
func twoSum(nums: [Int], target: Int) -> [Int] {
    var indexDict: [Int: Int] = [:]

    for (index, num) in nums.enumerated() {
        let complement = target - num

        if let complementIndex = indexDict[complement] {
            return [complementIndex, index]
        }

        indexDict[num] = index
    }
    return []
}

twoSum(nums: numbers, target: 7)
