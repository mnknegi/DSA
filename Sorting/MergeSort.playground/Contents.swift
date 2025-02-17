
/** Merge Sort */

func merge(arr: inout [Int], leftIndex: Int, midIndex: Int, rightIndex: Int) {
    let leftArray = Array(arr[leftIndex..<midIndex + 1])
    let rightArray = Array(arr[midIndex + 1...rightIndex])

    var index = leftIndex
    var index_i = 0
    var index_j = 0

    while index_i < leftArray.count && index_j < rightArray.count {
        if leftArray[index_i] <= rightArray[index_j] {
            arr[index] = leftArray[index_i]
            index_i += 1
        } else {
            arr[index] = rightArray[index_j]
            index_j += 1
        }
        index += 1
    }

    while index_i < leftArray.count {
        arr[index] = leftArray[index_i]
        index_i += 1
        index += 1
    }

    while index_j < rightArray.count {
        arr[index] = rightArray[index_j]
        index_j += 1
        index += 1
    }
}

func mergeSort(arr: inout [Int], leftIndex: Int, rightIndex: Int) {
    if leftIndex >= rightIndex { return }

    let midIndex = leftIndex + (rightIndex - leftIndex) / 2
    mergeSort(arr: &arr, leftIndex: leftIndex, rightIndex: midIndex)
    mergeSort(arr: &arr, leftIndex: midIndex + 1, rightIndex: rightIndex)

    merge(arr: &arr, leftIndex: leftIndex, midIndex: midIndex, rightIndex: rightIndex)
}

var array = [3, 1, 4, 2]
let leftIndex = 0
let rightIndex = array.count - 1

mergeSort(arr: &array, leftIndex: leftIndex, rightIndex: rightIndex)

print("Sorted array: \(array)")  // Output: [1, 3]
