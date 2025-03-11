
let arr = [1, 5, 3, 6, 2, 9, 0]
// output = 6

let arr2 = [3]
// output = -1

let arr3 = [2, 1]

func secondHighest(arr: [Int]) -> Int {
    var highest = Int.min
    var secondHighest = Int.min

    for index in 0..<arr.count {
        if arr[index] > highest {
            secondHighest = highest
            highest = arr[index]
        } else if arr[index] > secondHighest && arr[index] != highest {
            secondHighest = arr[index]
        }
    }
    return secondHighest == Int.min ? -1 : secondHighest
}

print(secondHighest(arr: arr3))

/*
 pseudo code:
 - highest = Int.min
 - secondHighest = Int.min
 - loop through all the elements
 - if current element is greater than highest, then secondHighest = highest and highest = current
 - else if current element is greater than secondHighest and current and highest are not equal then, second = current element.
 */
