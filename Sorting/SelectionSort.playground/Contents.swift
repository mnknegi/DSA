
/** Selection Sort */

/*
 Selection Sort: Instead of bubbling the largest item to the end like bubble sort, selection sort works by finding the smallest(or largest) element and putting it at the correct place one step at a time.
 */

// Input : [64, 25, 12, 22, 11]
/*
 ------------------------- First Iteration -------------------------
 - Start from the first element at index 0(current index)(64). Find the smallest element in the rest of the unsorted array(11). If first element is smaller than min element then swap them. After swapping move the current index by 1.
 [11, 25, 12, 22, 64]
 ------------------------- First Iteration Complete -------------------------

 ------------------------- Second Iteration -------------------------
 - Now element at current index is 25. Find element at min index which is 12. swap and move current index.
 [11, 12, 25, 22, 64]
 ------------------------- Second Iteration Complete -------------------------

 ------------------------- Third Iteration -------------------------
 - Compare element at third index with the smallest element in the unsorted array which is 22.
 [11, 12, 22, 25, 64]
 ------------------------- Third Iteration Complete -------------------------

 ------------------------- Fourth Iteration -------------------------
 - Compare the last two elememts, they are already sorted.
 [11, 12, 22, 25, 64]
 ------------------------- Fourth Iteration Complete -------------------------
 */

/*
 Pseudocode:
 - In selection sort we select the index of minimum element.
 - For loop from index_i = 0 to array.count - 1 (0..<size - 1).
 - Take minIndex = index_i.
 - For loop from index_i+1 to array.count - 1 (index_i+1..<size).
 - condition where element at minIndex is greater than element at index_j, if true
 - minIndex will be index_j.
 - at the end of iteration, swap the elements at index_i  and minIndex in side a condition where minIndex should not be equal to index_i.

 [4, 3, 2, 1]
 [1, 3, 2, 4] -> 1 is sorted
 [1, 2, 3, 4] -> 2 is sorted and all the elements are sorted automatically.
 */

func selectionSort(array: inout [Int]) {
    let size = array.count
    guard size > 1 else { return }

    for index_i in 0..<size - 1 { // the last element does not need to be checked.
        var minIndex = index_i

        // inner loop finds the minimum from (i + 1) to (n - 1)
        for index_j in index_i+1..<size {
            if array[index_j] < array[minIndex] {
                minIndex = index_j
            }
        }

        if minIndex != index_i {
            array[index_i] = array[index_i] + array[minIndex]
            array[minIndex] = array[index_i] - array[minIndex]
            array[index_i] = array[index_i] - array[minIndex]
        }
    }
}

var arr = [6, 4, 3, 2, 5, 1]
selectionSort(array: &arr)


//Generic Selection Sort
func selectionSort<T: Comparable>(array: inout [T]) {
    let size = array.count
    guard size > 1 else { return }

    for index_i in 0..<size - 1 { // from 0 to size - 1
        var minIndex = index_i

        for index_j in index_i+1..<size { // from index_i+1 to size
            if array[index_j] < array[minIndex] {
                minIndex = index_j
            }
        }

        if minIndex != index_i {
            (array[minIndex], array[index_i]) = (array[index_i], array[minIndex])
        }
    }
}

var fruits = ["orange", "apple", "banana", "kiwi"]
selectionSort(array: &fruits)

/* Time Complexity O(n²)*/
