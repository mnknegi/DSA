/**
 Insertion Sort
 */

func insertionSort(arr: [Int]) {
    var array = arr
    for index_i in 1..<array.count {
        let temp = array[index_i]
        var index_j = index_i - 1

        while(index_j >= 0 && temp < array[index_j]) {
            array[index_j+1] = array[index_j]
            array[index_j] = temp
            index_j -= 1
        }
    }
    print(array)
}

insertionSort(arr: [4, 5, 3, 2, 1, 6])
