
/*
 Given an array of integers arr[], the task is to move all the zeros to the end of the array while maintaining the relative order of all non-zero elements.

 Input: arr[] = [1, 2, 0, 4, 3, 0, 5, 0]
 Output: arr[] = [1, 2, 4, 3, 5, 0, 0, 0]
 Explanation: There are three 0s that are moved to the end.

 Input: arr[] = [10, 20, 30]
 Output: arr[] = [10, 20, 30]
 Explanation: No change in array as there are no 0s.

 Input: arr[] = [0, 0]
 Output: arr[] = [0, 0]
 Explanation: No change in array as there are all 0s.
 */

/*
 Pseudo code:
 - Initialize a current value = 0
 - Loop over the array from index 0 to size - 1.
 - If array[index] != 0 then swap array item at index and at current and increment the current value by 1.
 - If array[index] is 0 then do nothing.
 */

func pushZerosToEnd(arr: inout [Int]) {
    var current = 0

    for index in 0..<arr.count {
        if arr[index] != 0 {
            arr.swapAt(index, current)
            current += 1
        }
    }
}

var arr = [1, 2, 0, 4, 3, 0, 5, 0]
pushZerosToEnd(arr: &arr)
print(arr)
