
/*
 Given an array of n integers, the task is to find the third largest element. All the elements in the array are distinct integers.

 Input: arr[] = {1, 14, 2, 16, 10, 20}
 Output: 14
 Explanation: Largest element is 20, second largest element is 16 and third largest element is 14

 Input: arr[] = {19, -10, 20, 14, 2, 16, 10}
 Output: 16
 Explanation: Largest element is 20, second largest element is 19 and third largest element is 16
 */

/*
 Pseudo code:
 - Take 3 variables.
 - If the currentItem is larger than the largest variable then currentItem is largest one.
 - If the currentItem is larger than secondLargest but smaller than largest one then currentItem is secondLargest one.
 - If previous two conditions failed and currentItem is larger than thirdLargest then currentItem is thirdLargest one.
 */

func findThirdLargest(arr: [Int]) -> Int {
    guard arr.count > 3 else {
        return -1
    }

    var largest = -1
    var secondLargest = -1
    var thirdLargest = -1

    for currentItem in arr {
        if currentItem > largest {
            thirdLargest = secondLargest
            secondLargest = largest
            largest = currentItem
        } else if currentItem > secondLargest {
            thirdLargest = secondLargest
            secondLargest = currentItem
        } else if currentItem > thirdLargest {
            thirdLargest = currentItem
        }
    }

    return thirdLargest
}

//let array = [1, 14, 2, 16, 10, 20]
let array = [19, -10, 20, 14, 2, 16, 10]
findThirdLargest(arr: array)
