
/** Bubble Sort */

/*
 Bubble Sort: Repeatedly swapping adjacent elements if they are in the wrong order.
 */

// Input : [14, 33, 27, 35, 10]
/*
  ------------------------- First Iteration -------------------------
 - Compare first second elements(14, 33) and check which is greater. In case if it is already sorted then compare next two.
 [14, 33, 27, 35, 10]

 - Compare second and third elements(33, 27). Third element is smaller than second so the two values must be swapped.
 [14, 27, 33, 35, 10]

 - Compare third and fourth elements(33, 35). If third element is smaller then do nothing, otherwise swap the two elements.
 [14, 27, 33, 35, 10]

 - Compare fourth and fifth elements.
 [14, 27, 33, 10, 35]
 ------------------------- First Iteration Complete -------------------------

 ------------------------- Second Iteration -------------------------
 - Compare first second elements(14, 27) and check which is greater. if first element is greater, then swap elements.
 [14, 27, 33, 10, 35]

 - Compare second and third elements(27, 33).
 [14, 27, 33, 10, 35]

 - Compare third and fourth elements(33, 10). Swap them
 [14, 27, 10, 33, 35]

 - No need to compare fourth and fifth elements as fifth element is already sorted.

 ------------------------- Second Iteration Complete -------------------------

 ------------------------- Third Iteration -------------------------
 - Compare first second elements(14, 27) and check which is greater. if first element is greater, then swap elements.
 [14, 27, 10, 33, 35]

 - Compare second and third elements(27, 10).
 [14, 10, 27, 33, 35]

 - No need to compare third and fourth elements as fourth element is already sorted.

 ------------------------- Third Iteration Complete -------------------------

 ------------------------- Fourth Iteration -------------------------
 - Compare first and second element(14, 10).
 [10, 14, 27, 33, 35]

 - No need to compare third and fourth elements as fourth element is already sorted.
*/

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

/*
 Pseudocode:

 - We loop through the array multiple times.
 - Each pass "bubbles" the largest unsorted element to the end.
 - Outer loop run from 0..< size (or 0..<size - 1(optimized) both acceptable).
 - We optimized by reducing the range(n - i - 1) each time.
 - Break early if no swap happens(the array is already sorted).
 */

/*
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
 */

func bubbleSort(array: inout [Int]) {
    let size = array.count
    guard size > 1 else { return }

    for index_i in 0..<size {
        // for index_i in 0..<size - 1 is also acceptable here. This one is slightly optimized.
        // In first case for the last iteration of outer loop the inner loop will never execute as the condition will become 0..<0.

        var swapped = false

        for index_j in 0..<size - index_i - 1 {
            if array[index_j] > array[index_j + 1] {
//                array.swapAt(index_j, index_j + 1)
                (array[index_j], array[index_j + 1]) = (array[index_j + 1], array[index_j])
                swapped = true
            }
        }

        // if no swap happened, the array is sorted.
        if swapped == false { break }
    }
}

// [4, 1, 3, 2]
var arr = [4, 3, 2, 1]
bubbleSort(array: &arr)

var numbers = [14, 33, 27, 35, 10]
bubbleSort(array: &numbers)

// Generic version of bubble sort

func bubbleSort<T: Comparable>(array: inout [T]) {
    let size = array.count
    guard size > 1 else { return }

    for index_i in 0..<size {
        var swapped = false

        for index_j in 0..<(size - index_i - 1) {
            if array[index_j] > array[index_j + 1] {
                (array[index_j], array[index_j + 1]) = (array[index_j + 1], array[index_j])
                swapped = true
            }
        }

        if swapped == false { break }
    }
}

var fruits = ["banana", "apple", "cherry"]
bubbleSort(array: &fruits)

/* Time Complexity: O(n²) */
