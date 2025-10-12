
/** Reverse Words In String */
final class Node {
    let value: String
    var next: Node?

    init(_ value: String) {
        self.value = value
        self.next = nil
    }
}

final class Stack {
    var top: Node?
    var height: Int = 0

    func push(_ value: String) {
        let newNode = Node(value)
        newNode.next = self.top
        self.top = newNode
        self.height += 1
    }

    func pop() -> String? {
        if self.height == 0 { return nil }
        var temp = self.top
        var poppedValue = temp?.value
        self.top = self.top?.next
        temp = nil
        self.height -= 1
        return poppedValue
    }

    func reverseString(word: String) {
        var reverseStack = Stack()
        reverseStack.push(word)
    }

    func printStack() {
        var temp = self.top
        while var node = temp {
            print(node.value, terminator: " --> ")
            temp = node.next
        }
        print("nil")
    }
}

let string = "You can win Now"
let words = string.split(separator: " ").map { String($0) }

let stack = Stack()

for word in words {
    stack.push(word)
}

stack.printStack()

var reverseWords: [String] = []
for _ in 0..<words.count {
    reverseWords.append(stack.pop()!)
}

print("original string: \(string)")
print("reverse string: \(reverseWords.joined(separator: " "))")
