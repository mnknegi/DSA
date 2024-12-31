
/**
 Stack using Linked List.
 */
final class Node {
    var value: Int
    var next: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

final class Stack {
    var top: Node?
    var height: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.top = newNode
        self.height = 1
    }

    //push
    func push(_ value: Int) {
        let newNode = Node(value)
        newNode.next = self.top
        self.top = newNode
        self.height += 1
    }

    //pop
    func pop() -> Int? {
        if self.height == 0 { return nil }
        var temp = self.top
        self.top = top?.next
        let poppedValue = temp?.value
        temp = nil
        self.height -= 1
        return poppedValue
    }

    //top

    func printStack() {
        var temp = self.top
        for index in 0..<self.height {
            print(temp!.value)
            temp = temp?.next
        }
    }
}

// Create a stack.
var stack = Stack(0)

// push
stack.push(1)
stack.push(2)

// pop
stack.pop()
stack.pop()
stack.pop()
stack.pop()

stack.push(0)

stack.printStack()
