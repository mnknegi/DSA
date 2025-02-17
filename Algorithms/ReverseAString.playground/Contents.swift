
/* Reverse a string

 Given a string, reverse it without using additional libraries.

 Example:
 string = "Hello, World!"

 Output:
 reverseString = "!dlroW ,olleH"

*/

// Naive approach
func reverseString(string: String) {
//    var charArray = string.map { $0 }
    var charArray = Array(string)

    var left_index = 0
    var right_index = charArray.count - 1

    while(left_index < right_index) {
        let temp = charArray[left_index]
        charArray[left_index] = charArray[right_index]
        charArray[right_index] = temp
        left_index += 1
        right_index -= 1
    }

    let reversedString = String(charArray)
    print("reversedString: \(reversedString)")
}

//reverseString(string: "Hello, World!")

// Expert approach

func reversedStringUsingRotation(string: String) {
    var inputString = string
    var reversedString = ""

    for index in 0..<string.count {
        let character = inputString[inputString.index(inputString.startIndex, offsetBy: index)]
        reversedString = String(character) + reversedString
    }

    print("reversedString using rotation: \(reversedString)")
}

reversedStringUsingRotation(string: "Hello, World!")
