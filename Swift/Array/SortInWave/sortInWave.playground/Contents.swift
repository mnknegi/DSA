
/*
 Given a sorted array arr[] of integers (in ascending order), rearrange the elements in-place to form a wave-like array.
 An array is said to be in wave form if it satisfies the following pattern: arr[0] ≥ arr[1] ≤ arr[2] ≥ arr[3] ≤ arr[4] ≥ ...
 In other words, every even-indexed element should be greater than or equal to its adjacent odd-indexed elements (if they exist).

 Note: The given array is sorted in ascending order, and modify the given array in-place without returning a new array.

 Input: arr[] = [1, 2, 3, 4, 5]
 Output: [2, 1, 4, 3, 5]
 Explanation: Array elements after sorting it in the waveform are 2, 1, 4, 3, 5.

 Input: arr[] = [2, 4, 7, 8, 9, 10]
 Output: [4, 2, 8, 7, 10, 9]
 Explanation: Array elements after sorting it in the waveform are 4, 2, 8, 7, 10, 9.
 */

/*
 Pseudo code:
 - Initialize currentIndex with 0.
 - Loop over array from index 0 to one less than index - 1(index - 2).
 - Swap element at index currentIndex and currentIndex + 1 and then increment currentIndex by 2.
 */

func sortInWave(arr: inout [Int]) {
    let size = arr.count

    for index in stride(from: 0, to: size - 1, by: 2) {
        arr.swapAt(index, index + 1)
    }

//    var currentIndex = 0
//    while(currentIndex < size - 1) {
//        arr.swapAt(currentIndex, currentIndex + 1)
//        currentIndex += 2
//    }
}

var arr1 = [1, 2, 3, 4, 5]
sortInWave(arr: &arr1)

var arr2 = [2, 4, 7, 8, 9, 10]
sortInWave(arr: &arr2)
