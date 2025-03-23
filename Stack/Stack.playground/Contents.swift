
/** Stack */

/*

 ** Vector or Array **

 ---------------------------------------
|       |       |       |       |       |
|   1   |   2   |    3  |   4   |   5   |
|       |       |       |       |       |
 ---------------------------------------
    0       1       2       3       4

** Stack **

                |  -------  |
                | |       | |
                | |   5   | |   <---  Top
                | |       | |
                |  -------  |
                |  -------  |
                | |       | |
                | |   4   | |
                | |       | |
                |  -------  |
                | |       | |
                | |   3   | |
                | |       | |
                |  -------  |
                |  -------  |
                | |       | |
                | |   2   | |
                | |       | |
                |  -------  |
                |  -------  |
                | |       | |
                | |   1   | |
                | |       | |
                |  -------  |
                |  -------  |
                | |       | |
                | |   0   | |
                | |       | |
                |  -------  |
                 -----------


 ** Stack using Linked List **

             -------             -------             -------             -------             -------
            |       |           |       |           |       |           |       |           |       |
Top  ---->  |   1   |   ---->   |   2   |   ---->   |   3   |   ---->   |   4   |   ---->   |   5   |   ----> nil
            |       |           |       |           |       |           |       |           |       |
             -------             -------             -------             -------             -------
*/

final class Node {
    let value: Int
    var next: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

final class Stack {
    var top: Node?
    private var height: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.top = newNode
        self.height = 1
    }

    // push
    func push(_ value: Int) {
        let newNode = Node(value)
        newNode.next = self.top
        self.top = newNode
        self.height += 1
    }

    // pop
    func pop() -> Int? {
        if self.height == 0 { return nil }
        var temp = self.top
        let poppedValue = temp?.value
        self.top = self.top?.next
        self.height -= 1
        temp = nil
        return poppedValue
    }

    // print stack
    func printStack() {
        var temp = self.top
        print(" Top", terminator: "\n  ↓ \n")
        while let node = temp {
            print("| \(node.value) |")
            temp = node.next
        }
        print(" \u{203E}\u{203E}\u{203E}")
    }

}

let stack = Stack(0)
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)

stack.printStack()

stack.pop()
stack.pop()
stack.pop()

print("After popping out 5, 4, 3")
stack.printStack()
