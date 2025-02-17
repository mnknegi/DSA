
/** Bubble Sort */
func bubbleSort(arr: [Int]) {
    var array = arr
    let size = array.count - 1
    var swapped = false
    for index_i in stride(from: size, through: 1, by: -1) { // Loop through (array.count - 1) to 1
        swapped = false
        for index_j in 0..<index_i {                        // Loop througn 0 to index from above.
            if array[index_j] > array[index_j+1] {
                let temp = array[index_j]
                array[index_j] = array[index_j+1]
                array[index_j+1] = temp
                swapped = true
            }
        }

        if swapped == false { break } // if already sorted.
    }
    print(array)
}

// [4, 1, 3, 2]
let arr = [4, 3, 2, 1]
bubbleSort(arr: arr)

/**

 [3, 4, 2, 1]
 [3, 2, 4, 1]
 [3, 2, 1, 4] 4 is sorted
 ---------------
 [2, 3, 1, 4]
 [2, 1, 3, 4] 3 and 4 is sorted
 ---------------
 [1, 2, 3, 4] 1 & 2 are sorted and 3, 4 are already sorted.

 */
