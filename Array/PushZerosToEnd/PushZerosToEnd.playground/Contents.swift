
func pushZerosToEnd(arr: inout [Int]) {
    var current = 0

    for index in 0..<arr.count {
        if arr[index] != 0 {
            arr.swapAt(index, current)
            current += 1
        }
    }
}

var arr = [1, 2, 0, 4, 3, 0, 5, 0]
pushZerosToEnd(arr: &arr)
print(arr)
