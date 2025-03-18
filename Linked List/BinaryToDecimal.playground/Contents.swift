
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

    func binaryToDecimal() {
        var num = 0
        var temp = self.head
        while let node = temp {
            num = num * 2 + node.value
            temp = node.next
        }
        print(num)
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

let ll = LinkedList(1)
ll.append(0)
ll.append(1)
ll.append(1)

ll.printLL()

ll.binaryToDecimal()
