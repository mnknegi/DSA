
/* Swap First and Last */
final class Node {
    var value: Int
    var next: Node?
    var prev: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
        self.prev = nil
    }
}

final class DoublyLinkedList {
    var head: Node?
    var tail: Node?
    var length: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
        self.length = 1
    }

    func append(_ value: Int) {
        let newNode = Node(value)
        if self.length == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            newNode.prev = tail
            self.tail = newNode
        }
        self.length += 1
    }

    func swapFirstAndLast() {
        guard self.length > 1, let first = self.head, let last = self.tail else { return }
        let tempValue = first.value
        first.value = last.value
        last.value = tempValue
    }

    func printDLL() {
        var temp = self.head
        while let node = temp {
            print(node.value, terminator: " <-> ")
            temp = node.next
        }
        print("nil")
    }
}

let dll = DoublyLinkedList(0)
dll.append(1)
dll.append(2)
dll.append(3)

dll.printDLL()

dll.swapFirstAndLast()

dll.printDLL()
