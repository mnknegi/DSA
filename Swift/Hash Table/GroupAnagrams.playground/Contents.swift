
/** Group Anagrams */
/*
 Implement a function called groupAnagrams() that groups a list of strings based on their anagram equivalence.

 Input:
 The function takes a constant reference to a vector of strings.

 Output:
 The function should return a vector of vectors of strings, where each inner vector contains a group of anagram-equivalent strings. The order of the groups and the strings within the groups does not matter.


 Constraints:
 The input strings may contain any printable ASCII characters.
 The length of each string in the input vector may range from 1 to 100.

 Examples:
 Consider the following input vector:

 strings: {"eat", "tea", "tan", "ate", "nat", "bat"}
 After calling groupAnagrams(strings), the result could be (order of groups and strings within groups does not matter):

 {
     {"eat", "tea", "ate"},
     {"tan", "nat"},
     {"bat"}
 }
 */

func groupAnagrams(strings: [String]) -> [[String]] {
    var anagramGroup: [String: [String]] = [:]
    for string in strings {
        let sortedString = String(string.sorted())
        anagramGroup[sortedString, default: []].append(string)
    }
    return Array(anagramGroup.values)
}

let anagrams = groupAnagrams(strings: ["eat", "tea", "tan", "ate", "nat", "bat"])
print(anagrams)
