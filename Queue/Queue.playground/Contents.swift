
/** Queue */

/*

 ** Vector or Array **

 ---------------------------------------
|       |       |       |       |       |
|   1   |   2   |    3  |   4   |   5   |
|       |       |       |       |       |
 ---------------------------------------
    0       1       2       3       4

** Queue **

                 ---------------------------------------
   First  ----> |       |       |       |       |       |  <---- LAST
                |   1   |   2   |   3   |   4   |   5   |
                |       |       |       |       |       |
                 ---------------------------------------
    Dequeue                                                 Enqueue
    <------                                                 ------>


 ** Queue using Linked List **

                 -------             -------             -------             -------             -------
                |       |           |       |           |       |           |       |           |       |  <---- LAST
   First  ----> |   1   |   ---->   |   2   |   ---->   |   3   |   ---->   |   4   |   ---->   |   5   |   ----> nil
                |       |           |       |           |       |           |       |           |       |
                 -------             -------             -------             -------             -------
    Dequeue                                                                                                 Enqueue
    <------                                                                                                 ------>

 */

final class Node {
    let value: Int
    var next: Node?

    init(_ value: Int) {
        self.value = value
        self.next = nil
    }
}

final class Queue {
    var first: Node?
    var last: Node?
    var lenght: Int

    init(_ value: Int) {
        let newNode = Node(value)
        self.first = newNode
        self.last = newNode
        self.lenght = 1
    }

    // enqueue
    func enqueue(_ value: Int) {
        let newNode = Node(value)
        if self.lenght == 0 {
            self.first = newNode
            self.last = newNode
        } else {
            self.last?.next = newNode
            self.last = newNode
        }
        self.lenght += 1
    }

    // dequeue
    func dequeue() -> Int? {
        if self.lenght == 0 { return nil }
        var temp = self.first
        var dequeuedValue = temp?.value
        if self.lenght == 1 {
            self.first = nil
            self.last = nil
        } else {
            self.first = temp?.next
        }
        self.lenght -= 1
        temp = nil
        return dequeuedValue
    }

    func printQueue() {
        var temp = self.first
        print(" <---- DEQUEUE from this end", terminator: "  ")
        while let node = temp {
            print(node.value, terminator: " ----> ")
            temp = node.next
        }
        print("nil", terminator: "  ")
        print("<---- ENQUEUE from this end")
    }
}

let queue = Queue(0)
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(4)
queue.enqueue(5)

queue.printQueue()

queue.dequeue()
queue.dequeue()
queue.dequeue()

print("\nAfter Dequeuing 0, 1, 2\n")
queue.printQueue()
