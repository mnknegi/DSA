
/** Bubble Sort */
func bubbleSort(arr: [Int], size: Int) {
    var array = arr
    for index_i in stride(from: size, through: 1, by: -1) {
        for index_j in stride(from: 0, through: index_i, by: 1) {
            if array[index_i] < array[index_j] {
                let temp = array[index_i]
                array[index_i] = array[index_j]
                array[index_j] = temp
            }
        }
    }
    print(array)
}

// [4, 1, 3, 2]
let arr = [4, 1, 3, 2]
bubbleSort(arr: arr, size: arr.count - 1)

/** Explanation
 - Take a worst case scenario [4, 3, 2, 1]
 - Iteration for Bubble Sorting

 [3, 4, 2, 1]
 [3, 2, 4, 1]
 [3, 2, 1, 4] 4 is sorted
 ---------------
 [2, 3, 1, 4]
 [2, 1, 3, 4] 3 and 4 is sorted
 ---------------
 [1, 2, 3, 4] 1 & 2 are sorted and 3, 4 are already sorted.

 - Total iterations = 3
 - So size parameter should also be 3.
 - Every time we are fixing a element at the end so iterations are decreasing which means we need to decrement the for loop by 1.

 - We need to start innner loop from 0 as after every iteration the comparasion starts from 0th index.
 - Inner loop will run till the size of elements for that iteration.

 */
