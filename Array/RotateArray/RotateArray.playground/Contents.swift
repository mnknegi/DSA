
func rotateArray(arr: [Int], d: Int) -> [Int] {

    let size = arr.count

    var d = d % size

    let left = arr[0..<d]
    let right = arr[d..<size]

    return Array(right + left)
}

rotateArray(arr: [1, 2, 3, 4, 5, 6], d: 2)

// The correct implementation is.
// - rotate the first d - 1 elements.
// - rotate the remaining elements.
// - rotate entire array.
// check C++ implementation.
