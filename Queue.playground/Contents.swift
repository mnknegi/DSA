
final class Node {
    var value: Int
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
        var newNode = Node(value)
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
        var dequeued = temp?.value
        if self.lenght == 1 {
            self.first = nil
            self.last = nil
        } else {
            self.first = self.first?.next
        }
        temp = nil
        self.lenght -= 1
        return dequeued
    }

    func printQueue() {
        var temp = self.first
        for index in 0..<self.lenght {
            print(temp!.value)
            temp = temp?.next
        }
    }
}

// creation of a queue
var queue = Queue(0)

// enqueue
queue.enqueue(1)
queue.enqueue(2)

// dequeue
queue.dequeue()
queue.dequeue()
queue.dequeue()
queue.dequeue()

queue.enqueue(0)
queue.printQueue()
