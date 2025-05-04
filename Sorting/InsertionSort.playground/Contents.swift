/** Insertion Sort */

/*
 Insertion sort:

 It is an algorithm that works by iteratively inserting each element of an unsorted list into its correct position in a sorted portion of the list. It is like sorting playing cards in your hands.
 You split the cards into two groups: the sorted cards and the unsorted cards. Then, you pick a card from the unsorted group and put it in the right place in the sorted group.
 */

/*
 Pseudocode:
 - We start with the second element(index `1`) of the array as the first element is assumed to be sorted.
 - Compare the second element with the first element. If the second element is smaller then swap them.
 - Move to the third element and compare it with the first two elements which are already sorted. Put the element in the correct position.
 - Repeat until the entire array is sorted.
 */

// Input : [12, 11, 13, 5, 6]
/*
 ------------------------- First Iteration -------------------------
 - Compare second element with the first element. If the second element is smaller, swap them. Now move the key to third element.
 [11, 12, 13, 5, 6]
 ------------------------- First Iteration Complete -------------------------

 ------------------------- Second Iteration -------------------------
 - Now compare the element at third position with the two at first and second(compare with already sorted) and put the third element in its correct place. 13 is in correct palce so no change will take place.
 [11, 12, 13, 5, 6]
 ------------------------- Second Iteration Complete -------------------------

 ------------------------- Third Iteration -------------------------
 - Compare fourth element with the first three. Put 5 at the first place as it is the smallest one after comparing it with 11.
 [5, 11, 12, 13, 6]
 ------------------------- Third Iteration Complete -------------------------

 ------------------------- Fourth Iteration -------------------------
 - Compare fifth element with the first four. put it in second place.
 [5, 6, 11, 12, 13]
 ------------------------- Fourth Iteration Complete -------------------------
 */

//func insertionSort(arr: [Int]) {
//    var array = arr
//    for index_i in 1..<array.count {
//        let temp = array[index_i]
//        var index_j = index_i - 1
//
//        while(index_j >= 0 && temp < array[index_j]) {
//            array[index_j+1] = array[index_j]
//            array[index_j] = temp
//            index_j -= 1
//        }
//    }
//    print(array)
//}

func insertionSort(array: inout [Int]) {
    let size = array.count
    guard size > 1 else { return }

    for index_i in 1..<size {
        let key = array[index_i]
        var index_j = index_i - 1

        while index_j >= 0 && array[index_j] > key {
            array[index_j+1] = array[index_j]
            index_j -= 1
        }

        array[index_j + 1] = key
    }
}

var numbers = [4, 5, 3, 2, 1, 6]
insertionSort(array: &numbers)


// Generic Insertion sort

func insertionSort<T: Comparable>(array: inout [T]) {
    let size = array.count
    guard size > 1 else { return }

    for index_i in 1..<size {
        let key = array[index_i]
        var index_j = index_i - 1

        while index_j >= 0 && array[index_j] > key {
            array[index_j + 1] = array[index_j]
            index_j -= 1
        }

        array[index_j + 1] = key
    }
}

var fruits = ["orange", "apple", "banana", "kiwi"]
insertionSort(array: &fruits)
