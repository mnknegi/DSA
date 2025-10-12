
/** Remove Duplicates */
/*
 Write a function called removeDuplicates.
 This function takes a list of numbers as input and returns a new list that has all the duplicate numbers removed.

 Input
 A list of numbers stored in a vector called myList.

 Output
 A new list of numbers, also stored in a vector, with all duplicates removed.

 Example:
 Input List
 [1, 2, 2, 3, 3, 3, 4, 5, 5, 6]

 Output List
 [1, 2, 3, 4, 5, 6]
 */

let numbers = [1, 2, 2, 3, 3, 3, 4, 5, 5, 6]
func removeDuplicate() -> [Int] {

    /* Array(Set(numbers)).sorted() */

    var uniqueList = Set<Int>()
    for number in numbers {
        uniqueList.insert(number)
    }
    return uniqueList.sorted()
}

removeDuplicate()
