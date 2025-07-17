
/*
 Given an array of positive integers arr[] of size n, the task is to find second largest distinct element in the array.

 Note: If the second largest element does not exist, return -1.

 Input: arr[] = [12, 35, 1, 10, 34, 1]
 Output: 34
 Explanation: The largest element of the array is 35 and the second largest element is 34.

 Input: arr[] = [10, 5, 10]
 Output: 5
 Explanation: The largest element of the array is 10 and the second largest element is 5.

 Input: arr[] = [10, 10, 10]
 Output: -1
 Explanation: The largest element of the array is 10 there is no second largest element.
 */

/*
 Pseudo code:

 - Check if array length is greater than 1.
 - if currentItem of the array is less than largest but greater than secondLargest(in the middle) then
    secondLargest is equal to currentItem
   else if currentItem is greater than largest then
    secondLargest is largest and largest is equal to currentItem in the array.
 */

func findSecondLargest(arr: [Int]) -> Int {
    guard arr.count > 1 else {
        return -1
    }

    var largest = -1
    var secondLargest = -1

    for currentItem in arr {
        if currentItem > largest {
            secondLargest = largest
            largest = currentItem
        } else if currentItem < largest && currentItem > secondLargest {
            secondLargest = currentItem
        }
    }

    return secondLargest
}

//let array = [12, 35, 1, 10, 34, 1]
//let array = [10, 5, 10]
let array = [10, 10, 10]
findSecondLargest(arr: array)
