
// Create a Node
final class Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        lhs.value == rhs.value
    }
    
    var value: Int
    var next: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

final class LinkedList {
    private var head: Node?
    private var tail: Node?
    private var length: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
        self.length = 1
    }

    // append
    func append(_ value: Int) {

        // Create a new node.
        let newNode = Node(value)

        // Point head and tail to the new node when there is no node.
        if self.length == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            // Last node next point to the new node.
            tail?.next = newNode

            // Make new node the tail.
            tail = newNode
        }

        // Increase the lenght of the Linked List.
        self.length += 1
    }

    // remove last
    func removeLast() {

        // When there are no items in the link list.
        if self.length == 0 { return }

        // Take two pointers.
        var temp = head
        var pre = head

        // Move the pointers.
        while(temp?.next != nil) {
            pre = temp
            temp = temp?.next
        }

        // Move the tail one node back.
        tail = pre

        // detach the last node.
        tail?.next = nil

        // Decreament the length.
        self.length -= 1

        // handle the edge case where there is only one node in the list.
        if self.length == 0 {
            self.head = nil
            self.tail = nil
        }

        // Remove the temp node from the memory.
        temp = nil
    }

    // prepend
    func prepend(_ value: Int) {
        let newNode = Node(value)

        // No nodes.
        if length == 0 {
            self.head = newNode
            self.tail = newNode
        } else { // at least one node.
            newNode.next = self.head
            self.head = newNode
        }
        self.length += 1
    }

    // remove first
    func removeFirst() {
        if self.length == 0 {
            return
        }

        if self.length == 1 {
            self.head = nil
            self.tail = nil
        } else {
            var temp = self.head
            self.head = head?.next
            temp = nil
        }
        self.length -= 1
    }

    // get
    func getNode(at index: Int) -> Node? {
        if self.length == 0 || index >= self.length || index < 0 {
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
    }

    // set
    func setNode(_ value: Int, at index: Int) {
        if index < 0 || index >= self.length {
            print("Invalid index to set the item.")
            return
        }

        let temp = getNode(at: index)
        if temp != nil {
            temp?.value = value
        }
    }

    // insert
    func insertNode(_ value: Int, at index: Int) {
        if index < 0 || index > self.length {
            print("Invalid index to insert the item.")
            return
        }

        if index == 0 {
            self.prepend(value)
            return
        }

        if index == self.length {
            self.append(value)
            return
        }

        let newNode = Node(value)
        var temp = self.head
        /*
        var pre = self.head
        for indx in 0..<index {
            pre = temp
            temp = temp?.next
        }

        pre?.next = newNode
        newNode.next = temp
         */

        // Alternative way
        for indx in 0..<index - 1 {
            temp = temp?.next
        }
        newNode.next = temp?.next
        temp?.next = newNode
        self.length += 1
    }

    // Delete Node
    func delete(at index: Int) {
        if index < 0 || index > self.length {
            print("Invalid index to delete the item.")
            return
        }

        if index == 0 {
            removeFirst()
            return
        }

        if index == self.length {
            removeLast()
            return
        }

        /*
        var temp = self.head
        var pre = self.head
        for indx in 0..<index {
            pre = temp
            temp = temp?.next
        }

        pre?.next = temp?.next
        self.length -= 1
         */

        var nodeToBeRemoved = getNode(at: index)
        var temp = head
        for indx in 0..<index - 1 {
            temp = temp?.next
        }

        temp?.next = nodeToBeRemoved?.next
        self.length -= 1
    }

    // print list
    func printList() {
        var temp = head
        while(temp != nil) {
            print(temp!.value)
            temp = temp!.next
        }
    }
}

// Constructor
let ll = LinkedList(4)

// append
ll.append(7)
ll.append(5)
ll.append(3)
ll.append(9)

// remove last
ll.removeLast()
ll.removeLast()

// prepend
ll.prepend(0)

// clear all
for _ in 0..<4 {
    ll.removeLast()
}


ll.prepend(0)
ll.append(1)
ll.append(2)
ll.append(3)

// remove first
ll.removeFirst()
ll.removeFirst()
ll.removeFirst()
ll.removeFirst()
ll.removeFirst()
//ll.printList()

// get
ll.append(1)
ll.append(2)
ll.append(3)
ll.append(4)
ll.append(5)
//ll.printList()

//print(ll.getNodeValue(at: 3)?.value ?? "Item not found at this index.")

// set
ll.setNode(6, at: 0)

// insert
ll.insertNode(7, at: 4)

// delete
ll.delete(at: 4)
ll.delete(at: 0)
ll.delete(at: 4)
ll.delete(at: 1)
ll.printList()
