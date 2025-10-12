
/*
 Maximum product of a triplet (subsequence of size 3) in array

 Given an integer array, find a maximum product of a triplet in the array.

 Input:  arr[ ] = [10, 3, 5, 6, 20]
 Output: 1200
 Explanation: Multiplication of 10, 6 and 20

 Input:  arr[ ] =  [-10, -3, -5, -6, -20]
 Output: -90

 Input: arr[ ] =  [1, -4, 3, -6, 7, 0]
 Output: 168
 */

/*
 Pseudo code:
 - Scan the array and find the maximum, second maximum and third maximum element present in the array.
 - Scan the array and compute minimum and second minimum number in the array(this will find the negative numbers).
 - Return the maximum of product of maximum, second maximum and third maximum and product of minimum, second minimum and the maximum element.
 */

func maxProduct(arr: [Int]) -> Int {
    guard arr.count > 2 else {
        return Int.min
    }

    var maxA = Int.min
    var maxB = Int.min
    var maxC = Int.min

    var minA = Int.max
    var minB = Int.max

    for currentItem in arr {
        if currentItem > maxA {
            maxC = maxB
            maxB = maxA
            maxA = currentItem
        } else if currentItem > maxB {
            maxC = maxB
            maxB = currentItem
        } else if currentItem > maxC {
            maxC = currentItem
        }

        if currentItem < minA {
            minB = minA
            minA = currentItem
        } else if currentItem < minB {
            minB = currentItem
        }
    }

    return max((maxA * maxB * maxC), (minA * minB * maxA))
}

let arr = [1, -4, 3, -6, 7, 0]
maxProduct(arr: arr)
