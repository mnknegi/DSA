
/** Palindrome Checker */

/*
 Implement a member function called isPalindrome() that checks if the list is a palindrome, i.e., its elements read the same forward and backward.

 Input:
 The function is a member of the DoublyLinkedList class, which has a head and a tail pointer, as well as
 a length attribute.
 */

final class Node {
    let value: Int
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

    func append(_ value: Int) {
        let newNode = Node(value)

        if self.lenght == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            newNode.prev = self.tail
            self.tail = newNode
        }
        self.lenght += 1
    }

    func isPalindrome() -> Bool {
        var left = self.head
        var right = self.tail

        /* guard var left, var right else { return false }
        for _ in 0..<self.lenght/2 {
            if left.value == right.value {
                left = left.next!
                right = right.prev!
            } else {
                return false
            }
        } */

        while left !== right && left?.prev !== right {
            if left?.value != right?.value {
                return false
            }
            left = left?.next
            right = right?.prev
        }
        return true
    }

    func printDLL() {
        var temp = self.head
        while temp != nil {
            print(temp!.value, terminator: " <-> ")
            temp = temp?.next
        }
        print("nil")
    }
}

let dll = DoublyLinkedList(1)
dll.append(2)
dll.append(3)
dll.append(2)
dll.append(1)

dll.printDLL()

dll.isPalindrome()
