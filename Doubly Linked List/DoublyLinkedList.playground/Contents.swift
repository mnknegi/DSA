
// Create a Node
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
    var lenght: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
        self.lenght = 1
    }

    // append
    func append(_ value: Int) {
        let newNode = Node(value)
        if self.lenght == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            newNode.prev = tail
            self.tail = newNode
        }
        self.lenght += 1
    }

    // remove last
    func removeLast() {
        if self.lenght == 0 { return }
        if self.lenght == 1 {
            self.head = nil
            self.tail = nil
        } else {
            var temp = self.tail
            self.tail = tail?.prev
            self.tail?.next = nil
            temp = nil
        }
        self.lenght -= 1
    }

    // prepend
    func prepend(_ value: Int) {
        let newNode = Node(value)
        if self.lenght == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            newNode.next = self.head
            self.head?.prev = newNode
            self.head = newNode
        }
        self.lenght += 1
    }

    // remove first
    func removeFirst() {
        if self.lenght == 0 { return }
        if self.lenght == 1 {
            self.head = nil
            self.tail = nil
        } else {
            var temp = self.head
            self.head = self.head?.next
            self.head?.prev = nil
            temp = nil
        }
        self.lenght -= 1
    }

    // get
    func get(at index: Int) -> Node? {
        if index < 0 || index >= self.lenght { return nil }
        var temp = self.head
        if index < self.lenght / 2 {
            for indx in 0..<index {
                temp = temp?.next
            }
        } else {
            temp = self.tail
            for indx in stride(from: self.lenght - 1, to: index, by: -1) {
                temp = temp?.prev
            }
        }
        return temp
    }

    // set
    func set(_ value: Int, at index: Int) -> Bool {
        guard let node = self.get(at: index) else {
            return false
        }
        node.value = value
        return true
    }

    // insert
    func insert(_ value: Int, at index: Int) -> Bool {
        if index < 0 || index > self.lenght { return false }
        if index == 0 { self.prepend(value) }
        else if index == self.lenght { append(value) }
        else {
            let newNode = Node(value)
            let after = self.get(at: index)
            let before = after?.prev
            before?.next = newNode
            newNode.prev = before
            after?.prev = newNode
            newNode.next = after
            self.lenght += 1
        }
        return true
    }

    // delete node
    func delete(at index: Int) -> Bool {
        if index < 0 || index >= self.lenght { return false }
        if index == 0 { removeFirst() }
        else if index == self.lenght - 1 { removeLast() }
        else {
            var temp = self.get(at: index)
            let after = temp?.next
            let before = temp?.prev
            before?.next = after
            after?.prev = before
            temp = nil
            self.lenght -= 1
        }
        return true
    }

    // print
    func printDLL() {
        var temp = self.head
        while let node = temp {
            print(node.value)
            temp = node.next
        }
    }

}

let dll = DoublyLinkedList(0)
dll.append(1)
dll.append(2)
dll.append(3)

dll.removeLast()
dll.removeLast()
dll.removeLast()
dll.removeLast()

dll.prepend(4)
dll.prepend(3)

dll.removeFirst()
dll.removeFirst()

dll.append(0)
dll.append(1)
dll.append(2)
dll.append(3)

dll.get(at: 2)
dll.set(4, at: 2)

dll.insert(2, at: 2)

dll.delete(at: 0)
dll.delete(at: 3)
dll.delete(at: 1)
dll.delete(at: 0)
dll.delete(at: 0)
dll.delete(at: 0)

dll.printDLL()
