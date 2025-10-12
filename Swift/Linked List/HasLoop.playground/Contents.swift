
/** Find Middle Node */

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

    // append
    func append(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
    }

    // has loop
    /*You are required to use Floyd's cycle-finding algorithm (also known as the "tortoise and the hare" algorithm) to detect the loop.
     This algorithm uses two pointers: a slow pointer and a fast pointer. The slow pointer moves one step at a time, while the fast pointer moves two steps at a time. If there is a loop in the linked list, the two pointers will eventually meet at some point. If there is no loop, the fast pointer will reach the end of the list.*/
    func hasLoop() -> Bool {
        var slow = self.head
        var fast = self.head
        while (fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next

            if slow === fast {
                return true
            }
        }
        return false
    }

}

// 🚀 Example Usage:
let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node2  // Creating a cycle

var linkedList = LinkedList()
linkedList.head = node1

print("Linked List has loop: \(linkedList.hasLoop())")

let node5 = Node(5)
let node6 = Node(6)
let node7 = Node(7)
let node8 = Node(8)
let node9 = Node(9)

node5.next = node6
node6.next = node7
node7.next = node8
node8.next = node9

var linkedList2 = LinkedList()
linkedList.head = node5

print("Linked List 2 has loop: \(linkedList2.hasLoop())")
