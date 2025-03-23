
/** Swap Nodes in Pairs */

/*
 Implement a member function called swapPairs() that swaps the values of every two adjacent nodes in the list.

 input: Doubly Linked List: 1 <-> 2 <-> 3 <-> 4 <-> 5 <-> 6
 output: 2 <-> 1 <-> 4 <-> 3 <-> 6 <-> 5

 input: Doubly Linked List: 1 <-> 2 <-> 3 <-> 4 <-> 5
 output: 2 <-> 1 <-> 4 <-> 3 <-> 5
 */

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
    var lenght: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
        self.lenght = 1
    }

    func append(_ value: Int) {
        let newNode = Node(value)

        if self.lenght == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            newNode.prev = self.tail
            self.tail = newNode
        }
        self.lenght += 1
    }

    func swapNodesInPair() {

        /* var before: Node? = self.head
        var after: Node? = self.head?.next

        while after != nil {
            var temp = before?.value
            before?.value = after!.value
            after?.value = temp!
            after = after?.next?.next
            before = after?.prev
        } */

        var current = self.head
        while current != nil, let next = current?.next {
            (current!.value, next.value) = (next.value, current!.value)
            current = next.next
        }
    }

    func printDLL() {
        var temp = self.head
        while temp != nil {
            print(temp!.value, terminator: " <-> ")
            temp = temp?.next
        }
        print("nil")
    }
}

let dll = DoublyLinkedList(1)
dll.append(2)
dll.append(3)
dll.append(4)
//dll.append(5)

dll.printDLL()

dll.swapNodesInPair()

dll.printDLL()
