
/*
 Implement the partitionList member function for the LinkedList class, which partitions the list such that all nodes with values less than x come before nodes with values greater than or equal to x.

 Example 1:
 Input:
 Linked List: 3 -> 8 -> 5 -> 10 -> 2 -> 1 x: 5

 Process:
 Values less than 5: 3, 2, 1
 Values greater than or equal to 5: 8, 5, 10

 Output:
 Linked List: 3 -> 2 -> 1 -> 8 -> 5 -> 10

 Example 2:
 Input:
 Linked List: 1 -> 4 -> 3 -> 2 -> 5 -> 2 x: 3

 Process:
 Values less than 3: 1, 2, 2
 Values greater than or equal to 3: 4, 3, 5

 Output:
 Linked List: 1 -> 2 -> 2 -> 4 -> 3 -> 5
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

    func partitionList(_ value: Int) -> Node? {
        var beforeHead = Node(0) // Dummy node for < x list
        var afterHead = Node(0) // Dummy node for >= x list

        var before = beforeHead
        var after = afterHead
        var current = self.head

        while(current != nil) {
            if current!.value < value {
                before.next = current
                before = before.next!
            } else {
                after.next = current
                after = after.next!
            }
            current = current?.next
        }
        after.next = nil
        before.next = afterHead.next

        return beforeHead.next
    }
}

// Example Usage:

let node1 = Node(1)
let node2 = Node(4)
let node3 = Node(3)
let node4 = Node(2)
let node5 = Node(5)

node4.next = node5
node3.next = node4
node2.next = node3
node1.next = node2

let list = LinkedList()
list.head = node1

let partitionedHead = list.partitionList(3)

// Print partitioned list
var current = partitionedHead
while current != nil {
    print(current!.value, terminator: " -> ")
    current = current?.next
}
