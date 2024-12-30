
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
            tail?.next = newNode
            newNode.prev = tail
            tail = newNode
        }
        self.length += 1
    }

    // remove last
    func removeLast() {
        if self.length == 0 {
            print("Already empty.")
            return
        }

        if self.length == 1 {
            self.head = nil
            self.tail = nil
        } else {
            var temp = self.tail
            self.tail = self.tail?.prev
            self.tail?.next = nil
        }
        self.length -= 1
    }

    // prepend
    func prepend(_ value: Int) {
        if self.length == 0 {
            self.append(value)
            return
        }

        // One or more than one items.
        let newNode = Node(value)
        newNode.next = self.head
        self.head?.prev = newNode
        self.head = newNode
        self.length += 1
    }

    // remove first
    func removeFirst() {
        if self.length == 0 {
            print("Already empty.")
            return
        }

        if self.length == 1 {
            self.head = nil
            self.tail = nil
        } else {
            var temp = self.head
            self.head = self.head?.next
            self.head?.prev = nil
            temp = nil
        }
        self.length -= 1
    }

    func getNode(at index: Int) -> Node? {

        if index < 0 || index >= self.length {
            print("Wrong index")
            return nil
        }

        if self.length == 0 {
            print("Empty")
            return nil
        }

        if self.length == 1 {
            return self.head
        } else {
            var temp = self.head
            for indx in 0..<index {
                temp = temp?.next
            }
            return temp
        }

        /*
         we can optimize this by checking if the index is in the left or the right half of the list.
         */
    }

    // set
    func setNodeValue(_ value: Int, at index: Int) {
        if index < 0 || index >= self.length {
            print("Index out_of_bound.")
            return
        }

        if self.length == 0 {
            return
        }

        if self.length == 1 {
            self.head?.value = value
        } else {
            var temp = self.head
            for indx in 0..<index {
                temp = temp?.next
            }
            temp?.value = value
        }
    }

    // insert
    func insert(_ value: Int, at index: Int) {
        if index < 0 || index >= self.length {
            print("Index out_of_bound.")
            return
        }

        let newNode = Node(value)
        if self.length == 0 {
            prepend(value)
            return
        }

        if index == self.length {
            append(value)
            return
        }

        var temp = self.head
        for indx in 0..<index {
            temp = temp?.next
        }
        var pre = temp?.prev
        pre?.next = newNode
        newNode.prev = pre
        temp?.prev = newNode
        newNode.next = temp
        self.length += 1
    }

    // remove
    func remove(at index: Int) {
        if index < 0 || index >= self.length {
            print("Index out_of_bound.")
            return
        }

        if self.length == 0 {
            print("Nothing to remove.")
            return
        }

        if index == 0 {
            self.removeFirst()
            return
        }

        if index == self.length - 1 {
            self.removeLast()
            return
        }

        var temp = self.head
        for indx in 0..<index {
            temp = temp?.next
        }
        var before = temp?.prev
        var after = temp?.next
        before?.next = after
        after?.prev = before
        temp?.prev = nil
        temp?.next = nil
        self.length -= 1
    }

    func printList() {
        var temp = self.head
        while(temp != nil) {
            print(temp!.value)
            temp = temp?.next
        }
    }
}

var dll = DoublyLinkedList(0)

// append
dll.append(1)
dll.append(2)
dll.append(3)

// remove last
dll.removeLast()
dll.removeLast()
dll.removeLast()
dll.removeLast()

// remove last with no item.
//dll.removeLast()

// prepend
dll.prepend(2)
dll.prepend(1)
dll.prepend(0)

// remove first
dll.removeFirst()
dll.removeFirst()
dll.removeFirst()
//dll.removeFirst()

// get
dll.append(0)
dll.append(1)
dll.append(2)
let node = dll.getNode(at: 0)
//print(node?.value)

// set
dll.setNodeValue(2, at: 1)
dll.setNodeValue(3, at: 2)

// insert
dll.insert(1, at: 1)

// delete
dll.remove(at: 3)

dll.printList()
