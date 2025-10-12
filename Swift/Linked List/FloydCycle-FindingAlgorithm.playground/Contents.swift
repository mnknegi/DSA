
/** Floyd's Cycle-Finding Algorithm (Tortoise and Hare Algorithm) */
/*
 Floyd's Cycle Detection Algorithm is used to detect a cycle in a linked list efficiently. It uses two pointers:
 - Slow pointer (slow) moves one step at a time.
 - Fast pointer (fast) moves two steps at a time.
 If there is a cycle, fast will eventually meet slow. If fast reaches nil, the list has no cycle.
 */

/* Pseudo code
 - Initialize two pointers (slow and fast) at the head of the linked list.
 - Move slow one step and fast two steps in each iteration.
 - If slow == fast, a cycle is detected.
 - If fast or fast.next is nil, the list has no cycle.

 🕑 Time Complexity: O(n)
 🛰️ Space Complexity: O(1) (no extra memory used)
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

    func hasLoop() -> Bool {
        var slow = self.head
        var fast = self.head

        while(fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next

            if slow === fast {
                return true
            }
        }
        return false
    }
}

let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
let node4 = Node(4)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node2

let linkedList = LinkedList()
linkedList.head = node1

print(linkedList.hasLoop())
