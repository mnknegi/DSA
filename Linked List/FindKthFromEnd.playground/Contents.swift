
/*
 Consider the following singly linked list:
 1 -> 2 -> 3 -> 4 -> 5 -> nullptr
 For the given list, the function ll.findKthFromEnd(2) should return the node with value 4, as it is the 2nd node from the end of the list.
 */

final class Node {
    let value: Int
    var next: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

final class LinkedList {
    var head: Node?
    var tail: Node?

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
    }

    // append
    func append(_ value: Int) {
        let newNode = Node(value)
        if self.head == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            self.tail = newNode
        }
    }

    /*
    func findKthFromEnd(_ index: Int) -> Node? {
        if index < 0 {
            return nil
        }

        var k = -index
        var slow = self.head
        var fast = self.head
        while(fast?.next != nil) {
            if k >= 0 {
                slow = slow?.next
            }
            fast = fast?.next
            k += 1
        }
        if k < 0 { return nil }
        return slow
    }
     */

    // Similar approach
    func findKthFromEnd(_ position: Int) -> Node? {

        // negative position or 0th index inserted(invalid input).
        if position <= 0 {
            return nil
        }

        var fast = self.head
        var slow = self.head

        for indx in 0..<position {
            if fast == nil { return nil } // position is greater than the elements in Linked List.
            fast = fast?.next
        }

        while let node = fast {
            slow = slow?.next
            fast = fast?.next
        }

        return slow
    }
}

let linkedList = LinkedList(0)
linkedList.append(1)
linkedList.append(2)
linkedList.append(3)
linkedList.append(4)

linkedList.findKthFromEnd(-1) // nil
linkedList.findKthFromEnd(0) // nil
linkedList.findKthFromEnd(2) // 3
linkedList.findKthFromEnd(4) // 1
linkedList.findKthFromEnd(5) // 0
