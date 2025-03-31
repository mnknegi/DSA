
/** Longest Consecutive Sequence */
/*
 Write a function called longestConsecutiveSequence.
 This function takes a list of numbers as input and finds the length of the longest sequence of numbers that can be arranged in order.
 For example, if the list is [2, 1, 6, 9, 4, 3], the longest sequence in order is [1, 2, 3, 4], and the length is 4.

 Example:
 Input List: [2, 1, 6, 9, 4, 3]
 Output Length: 4
 */

/* Level: 5 */

let numbers = [2, 1, 6, 9, 4, 3]

func longestConsecutiveSequence() -> Int {
    var longestStreak = 0
    let numbersSet = Set(numbers) // Convert list to Set for O(1) lookups
    for number in numbersSet {
        if !numbersSet.contains(number - 1) { // Start a sequence only if num - 1 is NOT in the set (ensures we start at the beginning)
            var currentNum = number
            var currentStreak = 1

            // Expand the sequence
            while numbersSet.contains(currentNum + 1) {
                currentNum += 1
                currentStreak += 1
            }

            longestStreak = max(longestStreak, currentStreak)
        }
    }
    return longestStreak
}

longestConsecutiveSequence()
