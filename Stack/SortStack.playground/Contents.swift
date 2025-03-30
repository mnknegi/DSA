
/** Sort Stack */
/*
 Implement a function called sortStack() that sorts a given stack of integers in ascending order using an additional stack.

 Input:
 The function takes a reference to a stack of integers inputStack, with an arbitrary size.
 */

/** Tough **/
func sortStack(inputStack: inout [Int]) {
    var additionalStack: [Int] = []

    while !inputStack.isEmpty {
        let temp = inputStack.removeLast()

        while !additionalStack.isEmpty && additionalStack.last! > temp {
            inputStack.append(additionalStack.removeLast())
        }

        additionalStack.append(temp)
    }

    while !additionalStack.isEmpty {
        inputStack.append(additionalStack.removeLast())
    }
}

var inputStack1 = [5, 2, 7, 1]
sortStack(inputStack: &inputStack1)

var inputStack2 = [-3, 0, 4, -1]
sortStack(inputStack: &inputStack2)
