
/*
 Mathematical Summation

 You are given an array arr of size n - 1 that contains distinct integers in the range from 1 to n (inclusive). This array represents a permutation of the integers from 1 to n with one element missing. Your task is to identify and return the missing element.
 */

func findMissingNumber(arr: [Int]) -> Int {
    let n = arr.count + 1
    let sum = n * (n + 1) / 2
    let actualSum = arr.reduce(0, +)
    return sum - actualSum
}

let arr = [1, 2, 4, 5, 6]
//print(findMissingNumber(arr: arr))

/*
 ✅ Time Complexity: O(n)
 ✅ Space Complexity: O(1)
 */


/*
 XOR Method (Bit Manipulation)
 x ^ x = 0 (Same numbers cancel out)
 x ^ 0 = x (XOR with 0 keeps the number)
 */

func findMissingNumberXOR(arr: [Int]) -> Int {
    let n = arr.count + 1
    var xorAll = 0, xorArray = 0

    for item in 1...n {
        xorAll ^= item
    }

    for num in arr {
        xorArray ^= num
    }

    return xorAll ^ xorArray
}

let arr2 = [1, 2, 4, 5, 6]
//print(findMissingNumberXOR(arr: arr2))

/*
 ✅ Time Complexity: O(n)
 ✅ Space Complexity: O(1)
 */

/* Question 2

 You are given an array arr of size n - 1 that contains distinct integers in the range from a to b (inclusive). This array represents a permutation of the integers from a to b with one element missing. Your task is to identify and return the missing element.
 */
func findMissingNumbersBetweenAToB(arr: [Int]) -> Int {
    let a = arr[0]
    let b = arr[arr.count - 1]

    // sum of first b natural numbers
    let sumOfB = b * (b + 1) / 2
    let sumOfAMinus1 = (a-1) * a / 2
    let sumFromAToB = sumOfB - sumOfAMinus1
    let actualSum = arr.reduce(0, +)
    return sumFromAToB - actualSum
}

let arr3 = [4, 5, 7, 8]
print(findMissingNumbersBetweenAToB(arr: arr3))
