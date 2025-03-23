
/*
 Implement a member function called reverse() that reverses the order of the nodes in the list.

 Input:
 The function is a member of the DoublyLinkedList class, which has a head and a tail pointer, as well as a length attribute.
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
    var length: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
        self.length = 1
    }

    // append
    func append(_ value: Int) {
        let newNode = Node(value)
        if self.length == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            newNode.prev = self.tail
            self.tail = newNode
        }
        self.length += 1
    }

    func reverse() {
        var current = self.head
        var temp: Node?

        while current != nil {
            temp = current?.next
            current?.next = current?.prev
            current?.prev = temp
            current = temp
        }

        temp = self.head
        self.head = self.tail
        self.tail = temp
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

let dll = DoublyLinkedList(0)
dll.append(1)
dll.append(2)
dll.append(3)
dll.append(4)
dll.append(5)

dll.printDLL()

dll.reverse()

dll.printDLL()
