
/** Toughest */

// ReverseBetween
// Implement the reverseBetween member function for the LinkedList class, which reverses the nodes of the list from the indexes m to n (the positions are 0-indexed).

final class Node {
    var value: Int
    var next: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

final class LinkedList {
    var head: Node?
    var lenght: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.lenght = 1
    }

    func append(_ value: Int) {
        let newNode = Node(value)
        if self.head == nil {
            self.head = newNode
            self.lenght += 1
            return
        }

        var temp = self.head
        while(temp?.next != nil) {
            temp = temp?.next
        }
        temp?.next = newNode
        self.lenght += 1
    }

    func reverseBetween(_ m: Int, _ n: Int) {
        guard self.head != nil, m < n else { return }

        var prev: Node? = self.head
        var current: Node? = self.head

        for _ in 0..<m {
            prev = current
            current = current?.next
        }

        let beforeM = prev
        let start = current

        var next: Node?

        for _ in m...n {
            next = current?.next
            current?.next = prev
            prev = current
            current = next
        }

        // Connect the reversed part back
        beforeM?.next = prev
        start?.next = current

        if m == 0 {  // If `m` was 0, update head
            head = prev
        }
    }

    func printLL() {
        var temp = self.head
        while let node = temp {
            print(node.value, terminator: " -> ")
            temp = node.next
        }
        print("nil")
    }
}

let ll = LinkedList(0)
ll.append(1)
ll.append(2)
ll.append(3)
ll.append(4)
ll.append(5)

ll.printLL()

ll.reverseBetween(1, 3)

ll.printLL()
