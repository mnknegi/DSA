
/** Merge Sort */

func merge(arr:[Int], leftIndex: Int, midIndex: Int, rightIndex: Int) {
    var array = arr
    var leftArray = Array(array[leftIndex..<midIndex])
    var rightArray = Array(array[midIndex...rightIndex])

    /*
    for item in leftIndex..<midIndex {
        leftArray.append(item)
    }

    for item in midIndex...rightIndex {
        rightArray.append(item)
    }
     */

    var index = leftIndex
    var index_i = 0
    var index_j = 0

    while(index_i < leftArray.count && index_j < rightArray.count) {
        if leftArray[index_i] <= rightArray[index_j] {
            array[index] = leftArray[index_i]
            index += 1
            index_i += 1
        } else {
            array[index] = rightArray[index_j]
            index += 1
            index_j += 1
        }
    }

    while (index_i < leftArray.count) {
        array[index] = leftArray[index_i]
        index += 1
        index_i += 1
    }

    while (index_j < rightArray.count) {
        array[index] = rightArray[index_j]
        index += 1
        index_j += 1
    }

    print(array)
}

func mergeSort(arr: [Int], leftIndex: Int, rightIndex: Int) {
    if leftIndex >= rightIndex { return }

    let midIndex = leftIndex + (rightIndex - leftIndex) / 2
    mergeSort(arr: arr, leftIndex: leftIndex, rightIndex: midIndex)
    mergeSort(arr: arr, leftIndex: midIndex+1, rightIndex: rightIndex)

    merge(arr: arr, leftIndex: leftIndex, midIndex: midIndex, rightIndex: rightIndex)

}

let array = [3, 1]
let leftIndex = 0
let rightIndex = array.count - 1

mergeSort(arr: array, leftIndex: leftIndex, rightIndex: rightIndex)
