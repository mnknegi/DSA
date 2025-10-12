
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

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
    }

    func append(_ value: Int) {
        let newNode = Node(value)

        if self.head == nil {
            self.head = newNode
            return
        }

        var temp = self.head
        while(temp?.next != nil) {
            temp = temp?.next
        }

        temp?.next = newNode
    }

    func removeDuplicate() {
        guard self.head != nil else { return }

        var dict: [Int: Bool] = [:]
        var temp = self.head
        var previous: Node?

        while let node = temp {
            if dict[node.value] == nil {
                dict[node.value] = true
                previous = node
            } else {
                previous?.next = node.next
            }
            temp = node.next
        }
    }

    func printLL() {
        var temp = self.head
        while(temp?.next != nil) {
            print(temp!.value, terminator: " -> ")
            temp = temp?.next
        }
        print("nil")
    }
}

let ll = LinkedList(1)
ll.append(2)
ll.append(3)
ll.append(2)
ll.append(4)
ll.append(5)
ll.append(3)

print("Before removing duplicate")
ll.printLL()

print("After removing duplicate")
ll.removeDuplicate()

ll.printLL()

