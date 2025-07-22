
/*
 Reverse an Array in groups of given size

 Given an array arr[] and an integer k, find the array after reversing every subarray of consecutive k elements in place. If the last subarray has fewer than k elements, reverse it as it is. Modify the array in place, do not return anything.

 Input: arr[] = [1, 2, 3, 4, 5, 6, 7, 8], k = 3
 Output: [3, 2, 1, 6, 5, 4, 8, 7]
 Explanation: Elements is reversed: [1, 2, 3] → [3, 2, 1], [4, 5, 6] → [6, 5, 4], and the last group [7, 8](size < 3) is reversed as [8, 7].

 Input: arr[] = [1, 2, 3, 4, 5], k = 3
 Output: [3, 2, 1, 5, 4]
 Explanation: First group consists of elements 1, 2, 3. Second group consists of 4, 5.

 Input: arr[] = [5, 6, 8, 9], k = 5
 Output: [9, 8, 6, 5]
 Explnation: Since k is greater than array size, the entire array is reversed.
 */

/*
 Pseudo code:
 - Loop over arr from 0th index to size - 1 with increment of 3 in every iteration.
 - left is current index and right is min between current index + constant - 1 and array size - 1.
 - while left is less than right - swap the elements of the array and increase left by one and decrease right by 1.
 */

func reverseInGroup(arr: inout [Int], k: Int) {
    let size = arr.count

    for index in stride(from: 0, to: size - 1, by: 3) {
        var left = index
        var right = min(index + k - 1, size - 1)

        while(left < right) {
            arr.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}

var arr1 = [1, 2, 3, 4, 5, 6, 7, 8]
var arr2 = [1, 2, 3, 4, 5]
var arr3 = [5, 6, 8, 9]

reverseInGroup(arr: &arr1, k: 3)
print(arr1)

reverseInGroup(arr: &arr2, k: 3)
print(arr2)

reverseInGroup(arr: &arr3, k: 5)
print(arr3)
