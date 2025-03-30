
/** Find Duplicates */

/*
 Implement a function called findDuplicates() that finds and returns all the duplicate elements in a given vector of integers.

 Input:
 The function takes a constant reference to a vector of integers nums.

 Output:
 The function should return a vector of integers containing all the duplicate elements in the input vector nums. The order of the elements in the output vector does not matter.
 */

let numbers = [1, 2, 3, 4, 4, 5, 5, 6, 7, 8]

func findDuplicates() -> [Int] {
    var numCount: [Int: Int] = [:]
    for number in numbers {
        numCount[number, default: 0] += 1
    }

    var duplicates: [Int] = []
    for (number, count) in numCount where count > 1 {
        duplicates.append(number)
    }

    return duplicates
}

findDuplicates()
