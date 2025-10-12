
/** ReverseString */
/* Implement a function called reverseString() that reverses the input string using a stack data structure.

 Input:
 The function takes a constant reference to a string str.

 Output:
 The function should return a new string that is the reverse of the input string str.*/

func reverseString(_ string: String) -> String {

    var charStack: [Character] = []

    for char in string {
        charStack.append(char)
    }

    var reversedString = ""
    while !charStack.isEmpty {
        reversedString.append(charStack.removeLast())
    }

    return reversedString
}

let string = "hello"
reverseString(string)

// alternative way
func reverseString2(_ string: String) -> String {
    var chars = string.map { $0 }
    var firstIndex = 0
    var lastIndex = chars.count - 1
    for _ in 0..<chars.count / 2 {
        (chars[firstIndex], chars[lastIndex]) = (chars[lastIndex], chars[firstIndex])
        firstIndex += 1
        lastIndex -= 1
    }
    return String(chars)
}

reverseString2("Hello")
