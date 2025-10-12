
/** Find Pairs */
/*
 Write a function called findPairs.
 This function takes two lists of numbers and a target number.
 It then finds pairs of numbers where one number is from the first list and the other is from the second list, and their sum equals the target number.
 The function returns these pairs.
 */

let list1 = [1, 2, 3]
let list2 = [4, 5, 6]
let target = 8
// outputPairs = [(2, 6), (3, 5)]

func findPairs(targetSum: Int) -> [String] {

    /*
    // Approach 1 - using HashMap
    var data: [Int: Int] = [:]
    for item in list1 {
        let complementary = targetSum - item
        data[complementary] = item
    }

    var result: [String] = []
    for item in list2 {
        if let firstItem = data[item] {
            result.append("(\(firstItem), \(item))")
        }
    }
    return result
     */

    var set1 = Set<Int>()
    for item in list1 {
        set1.insert(item)
    }

    var result: [String] = []
    for item in list2 {
        let complement = targetSum - item
        if set1.contains(complement) {
            result.append("(\(complement), \(item))")
        }
    }
    return result
}

findPairs(targetSum: target)
