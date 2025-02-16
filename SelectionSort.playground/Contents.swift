
/* Selection Sort */

func selectionSort(arr: [Int]) {
    var array = arr
    for index_i in 0..<array.count {
        var minIndex = index_i
        for index_j in index_i+1..<array.count {
            if array[index_j] < array[minIndex] {
                minIndex = index_j
            }
        }
        if minIndex != index_i {
            let temp = array[index_i]
            array[index_i] = array[minIndex]
            array[minIndex] = temp
        }
    }
    print(array)
}

let arr = [6, 4, 3, 2, 5, 1]
selectionSort(arr: arr)

/**
 - In selection sort we select the index of minimum element.
 - For loop from index_i = 0 to array.count - 1.
 - Take minIndex = index_i.
 - For loop from index_i+1 to array.count - 1.
 - condition where element at minIndex is greater than element at index_j, if true
 - minIndex will be index_j.
 - at the end of iteration, swap the elements at index_i  and minIndex in side a condition where minIndex should not be equal to index_i.

 [4, 3, 2, 1]
 [1, 3, 2, 4] -> 1 is sorted
 [1, 2, 3, 4] -> 2 is sorted and all the elements are sorted automatically.

 */
