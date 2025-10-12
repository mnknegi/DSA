
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

    private var head: Node?
    private var tail: Node?

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
    }

    // append
    func append(_ value: Int) {
        let newNode = Node(value)
        if self.head == nil && tail == nil {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            self.tail = newNode
        }
    }

    // print
    func printLL() {
        if self.head == nil && self.tail == nil {
            return
        }

        var temp = self.head
        while(temp != nil) {
            print(temp!.value)
            temp = temp?.next
        }
    }

    // find middle
    func middleNode() -> Node? {
        var slow = self.head
        var fast = self.head
        while(fast != nil && fast?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}

let ll = LinkedList(0)
ll.append(1)
ll.append(2)
ll.append(3)
ll.append(4)
ll.append(5)

ll.printLL()

ll.middleNode()
