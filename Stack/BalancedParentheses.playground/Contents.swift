
func isBalancedParentheses(_ string: String) -> Bool {
    var stack = [Character]()

    for char in string {
        if char == "(" {
            stack.append(char)
        } else {
            if stack.isEmpty { return false }
            else { stack.removeLast() }
        }
    }
    if !stack.isEmpty { return false }
    return true
}

let string = "()"
isBalancedParentheses(string)

let string2 = "())"
isBalancedParentheses(string2)

let string3 = ")("
isBalancedParentheses(string3)

let string4 = "()("
isBalancedParentheses(string4)
