
/** First Non-Repeating Character */

/*
 Implement a function called firstNonRepeatingChar() that finds and returns the first non-repeating character in a given string.

 Input:
 The function takes a constant reference to a string input_string.

 input_string1 = "abbcc"
 input_string2 = "aaabcc"
 input_string3 = "aabbcc"
 input_string4 = "aabcdd"

 Output:
 The function should return a character which is the first non-repeating character in the input string. If no non-repeating character is found, the function should return a null character ('\0')
 .*/

func firstNonRepeatingCharacter(string: String) -> Character? {
    var charCount: [Character: Int] = [:]

    for char in string {
        charCount[char, default: 0] += 1
    }

    for char in string {
        if charCount[char] == 1 {
            return char
        }
    }
    return nil
}


let input_string1 = "abbcc"
let input_string2 = "aaabcc"
let input_string3 = "aabbcc"
let input_string4 = "aabcdd"

firstNonRepeatingCharacter(string: input_string4)
