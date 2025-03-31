
/** Has Unique Characters */
/*
 Write a function named hasUniqueChars.
 The function checks if all the characters in a given text are unique or not.
 If they are unique, the function will return true. If even one character is repeated, the function will return false.
 */

func hasUniqueCharacters(text: String) -> Bool {
    let letters = text.map { $0 }

    /*
    // Approach 1 - Using HashMap(Dictionary)
    var wordDict: [Character: Int] = [:]
    for letter in letters {
        wordDict[letter, default: 0] += 1

        if let letterCount = wordDict[letter], letterCount > 1 {
            return false
        }
    }
    return true
     */

    // Approach 2 - Using Set
    var charSet = Set<Character>()
    for letter in letters {
        guard !charSet.contains(letter) else { return false }
        charSet.insert(letter)
    }
    return true
}

hasUniqueCharacters(text: "hello")
hasUniqueCharacters(text: "world")
