
/**
 `Linked List`
 */

// Create Singly Linked List Node
final class Node<Element> {
    var value: Element
    var next: Node?

    init(_ value: Element) {
        self.value = value
        self.next = nil
    }
}

// Linked List
final class LinkedList<Element> {
    var head: Node<Element>?
    var tail: Node<Element>?
    var lenght: Int

    init(_ value: Element) {
        let newNode = Node(value)
        self.head = newNode
        self.tail = newNode
        self.lenght = 1
    }

    // append
    func append(_ value: Element) {
        let newNode = Node(value)
        if self.lenght == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
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
            var temp = self.head
            var pre = self.head
            while(temp?.next != nil) {
                pre = temp
                temp = temp?.next
            }
            self.tail = pre

            // clean up
            self.tail?.next = nil
            temp = nil
            pre = nil
        }
        self.lenght -= 1
    }

    // prepend
    func prepend(_ value: Element) {
        let newNode = Node(value)
        if self.lenght == 0 {
            self.head = newNode
            self.tail = newNode
        } else {
            newNode.next = self.head
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
            self.head = temp?.next
            temp = nil
        }

        self.lenght -= 1
    }

    // get value of node
    func get(at index: Int) -> Node<Element>? {
        if index < 0 || index >= self.lenght { return nil }

        var temp = self.head
        for index in 0..<index {
            temp = temp?.next
        }
        return temp
    }

    // set value of node
    func set(_ value: Element, at index: Int) -> Bool {
        if index < 0 || index >= self.lenght { return false }

        var temp = self.head
        for indx in 0..<index {
            temp = temp?.next
        }
        temp?.value = value
        return true
    }

    // insert(_:at:)
    func insert(_ value: Element, at index: Int) {
        if index == 0 {
            self.prepend(value)
            return
        }

        if index == self.lenght { 
            self.append(value)
            return
        }

        let newNode = Node(value)
        var temp = self.head
        var pre = self.head
        for indx in 0..<index {
            pre = temp
            temp = temp?.next
        }
        pre?.next = newNode
        newNode.next = temp
        self.lenght += 1

        // clean up
        pre = nil
        temp = nil
    }

    // remove(at:)
    func remove(at index: Int) {
        if index < 0 || index == self.lenght {
            return
        }

        if index == 0 {
            removeFirst()
            return
        }

        if index == self.lenght - 1 {
            removeLast()
            return
        }

        var temp = self.head
        var pre = self.head
        for indx in 0..<index {
            pre = temp
            temp = temp?.next
        }
        pre?.next = temp?.next
        self.lenght -= 1
        temp = nil
        pre = nil
    }

    // reverseList
    func reverseList() {
        if self.lenght <= 1 {
            return
        }

        // swap head and tail
        var temp = self.head
        self.head = self.tail
        self.tail = temp

        var before: Node<Element>? = nil
        var after = temp?.next

        for index in 0..<self.lenght {
            after = temp?.next
            temp?.next = before
            before = temp
            temp = after
        }

        // clean up
        before = nil
        temp = nil
    }

    // print list
    func printList() {
        var temp = self.head
        while(temp != nil) {
            print(temp!.value)
            temp = temp?.next
        }
        // clean up
        temp = nil
    }
}

/*
// create list
let ll = LinkedList(0)

// append
ll.append(1)
ll.append(2)

// remove last
ll.removeLast()
ll.removeLast()
ll.removeLast()
ll.removeLast()

// prepend
ll.append(2)
ll.prepend(1)
ll.prepend(0)

// remove first
ll.removeFirst()

// get node
ll.get(at: 0)?.value
ll.get(at: 1)?.value
ll.get(at: 2)?.value

// set value at node
ll.set(5, at: 0)
ll.set(6, at: 1)

// insert node at index
ll.insert(4, at: 0)
ll.insert(8, at: 3)
ll.insert(7, at: 3)

// remove node at index
ll.remove(at: 0)
ll.remove(at: 3)
ll.remove(at: 1)

// reverse list
ll.removeLast()
ll.removeLast()
ll.append(0)
ll.append(1)
ll.append(2)
ll.append(3)
ll.reverseList()

// print list
ll.printList()
*/

// Create Doubly Linked List Node
final class DoublyLLNode<Element> {
    var value: Element
    var next: DoublyLLNode?
    var prev: DoublyLLNode?

    init(_ value: Element) {
        self.value = value
        self.next = nil
        self.prev = nil
    }
}

final class DoublyLinkedList<Element> {
    var head: DoublyLLNode<Element>?
    var tail: DoublyLLNode<Element>?
    var lenght: Int

    init(_ value: Element) {
        let newNode = DoublyLLNode(value)
        self.head = newNode
        self.tail = newNode
        self.lenght = 1
    }

    // append
    func append(_ value: Element) {
        let newNode = DoublyLLNode(value)
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

    // removeLast
    func removeLast() {
        if self.lenght == 0 { return }

        if self.lenght == 1 {
            self.head = nil
            self.tail = nil
        } else {
            self.tail = self.tail?.prev
            self.tail?.next = nil
        }
        self.lenght -= 1
    }

    // prepend
    func prepend(_ value: Element) {
        if self.lenght == 0 {
            self.append(value)
            return
        }

        let newNode = DoublyLLNode(value)
        self.head?.prev = newNode
        newNode.next = self.head
        self.head = newNode
        self.lenght += 1
    }

    // removeFirst
    func removeFirst() {
        if self.lenght == 0 {
            return
        }

        if lenght == 1 {
            self.head = nil
            self.tail = nil
        } else {
            self.head = self.head?.next
            self.head?.prev = nil
        }
        self.lenght -= 1
    }

    // get(_:at:)
    func get(at index: Int) -> DoublyLLNode<Element>? {
        if index < 0 || index >= self.lenght {
            return nil
        }

        var temp = self.head
        for indx in 0..<index {
            temp = temp?.next
        }
        return temp
    }

    // set(_:at:)
    func set(_ value: Element, at index: Int) {
        if index < 0 || index >= self.lenght {
            return
        }

        var temp = self.head
        for indx in 0..<index {
            temp = temp?.next
        }
        temp?.value = value
    }

    // insert(_:at:)
    func insert(_ value: Element, at index: Int) {
        if index < 0 || index > self.lenght {
            return
        }

        if index == 0 {
            self.prepend(value)
            return
        }

        if index == self.lenght {
            self.append(value)
            return
        }

        let newNode = DoublyLLNode(value)
        var temp = self.head
        for indx in 0..<index {
            temp = temp?.next
        }
        newNode.next = temp
        newNode.prev = temp?.prev
        temp?.prev?.next = newNode
        temp?.prev = newNode
        self.lenght += 1
    }

    // remove(at:)
    func remove(at index: Int) {
        if index < 0 || index >= self.lenght {
            return
        }

        if index == 0 {
            removeFirst()
            return
        }

        if index == self.lenght - 1 {
            removeLast()
            return
        }

        var temp = self.head
        for indx in 0..<index {
            temp = temp?.next
        }

        temp?.prev?.next = temp?.next
        temp?.next?.prev = temp?.prev
        temp = nil
        self.lenght -= 1
    }

    // print doubly linked list
    func printDoublyLL() {
        var temp = self.head
        while(temp != nil) {
            print(temp!.value)
            temp = temp?.next
        }
        temp = nil
    }
}

/*
// create a doubly linked list
let dll = DoublyLinkedList("Mayank")

// append
dll.append("Ved")
dll.append("Vaasu")

// removeLast
dll.removeLast()

// prepend
dll.prepend("Vaasu")

// removeFirst
dll.removeFirst()
dll.removeFirst()
dll.removeFirst()
dll.removeFirst()

// get value of node
dll.append("Mayank")
dll.append("Ved")
dll.append("Vaasu")
dll.get(at: 0)?.value
dll.get(at: 1)?.value
dll.get(at: 2)?.value

// set value at node
dll.set("Mahima", at: 0)

// insert new node
dll.insert("Mayank", at: 0)

// remove node at index
dll.remove(at: 1)

//print doubly linked list
dll.printDoublyLL()
*/

final class StackNode<Element> {
    var value: Element
    var next: StackNode?

    init(_ value: Element) {
        self.value = value
        self.next = nil
    }
}

final class Stack<Element> {

    var top: StackNode<Element>?
    var height: Int

    init(_ value: Element) {
        let newNode = StackNode(value)
        self.top = newNode
        self.height = 1
    }

    // push function
    func push(_ value: Element) {
        let newNode = StackNode(value)
        newNode.next = top
        top = newNode
        height += 1
    }

    // pop function
    func pop() -> Element? {
        if self.height == 0 { return nil }
        var temp = top
        let poppedValue = temp?.value
        top = top?.next
        temp = nil
        height -= 1
        return poppedValue
    }

    // printStack function
    func printStack() {
        var temp = top
        while(temp != nil) {
            print(temp!.value)
            temp = temp?.next
        }
    }
}

/*
// create a stack
let st = Stack(0)

// push
st.push(1)

// pop
st.pop()
st.pop()

// print stack
st.printStack()
*/

final class QueueNode<Element> {
    var value: Element
    var next: QueueNode?

    init(_ value: Element) {
        self.value = value
        self.next = nil
    }
}

final class Queue<Element> {
    var first: QueueNode<Element>?
    var last: QueueNode<Element>?
    var lenght: Int

    init(_ value: Element) {
        let newNode = QueueNode(value)
        self.first = newNode
        self.last = newNode
        self.lenght = 1
    }

    // enqueue
    func enqueue(_ value: Element) {
        let newNode = QueueNode(value)
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
    func dequeue() -> Element? {
        if self.lenght == 0 { return nil }
        var temp = self.first
        var dequeuedValue = temp?.value
        if self.lenght == 1 {
            self.first = nil
            self.last = nil
        } else {
            self.first = self.first?.next
        }
        temp = nil
        self.lenght -= 1
        return dequeuedValue
    }

    // print
    func printQueue() {
        var temp = first
        while(temp != nil) {
            print(temp!.value)
            temp = temp?.next
        }
    }
}

/*
// create a queue
let qu = Queue(0)

// enqueue
qu.enqueue(1)
qu.enqueue(2)

// dequeue
qu.dequeue()
qu.dequeue()
qu.dequeue()

// print
qu.printQueue()
*/

final class BSTNode<Element> {
    var value: Element
    var left: BSTNode?
    var right: BSTNode?

    init(_ value: Element) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}

final class BinarySearchTree<Element: Comparable> {
    var root: BSTNode<Element>?

    init(root: BSTNode<Element>?) {
        self.root = nil
    }

    // insert
    func insert(_ value: Element) {
        let newNode = BSTNode(value)
        if self.root == nil {
            self.root = newNode
            return
        }

        var temp = self.root
        while(true) {
            if value == temp?.value { return }
            if value < temp!.value {
                if temp?.left == nil {
                    temp?.left = newNode
                    return
                }
                temp = temp?.left
            } else {
                if temp?.right == nil {
                    temp?.right = newNode
                    return
                }
                temp = temp?.right
            }
        }
    }

    // contains
    func contains(_ value: Element) -> Bool {
        if self.root == nil { return false }

        var temp = self.root
        while(temp != nil) {
            if temp?.value == value {
                return true
            } else if value < temp!.value {
                temp = temp?.left
            } else {
                temp = temp?.right
            }
        }
        return false
    }

}

/*
// create binary search tree
let bst = BinarySearchTree<Int>(root: nil)

// insert
bst.insert(10)
bst.insert(5)
bst.insert(15)
bst.insert(3)

// contains
bst.contains(15)
*/

final class HashTableNode {
    let key: String
    let value: Int
    var next: HashTableNode?

    init(key: String, value: Int) {
        self.key = key
        self.value = value
        self.next = nil
    }
}

final class HashTable {
    let size = 7
    var dataMap: [Int: HashTableNode]

    init() {
        self.dataMap = [Int : HashTableNode]()
    }

    // set
    func set(key: String, value: Int) {
        let newNode = HashTableNode(key: key, value: value)
        let hashIndex = hashFunction(key)

        if dataMap[hashIndex] != nil {
            var temp = dataMap[hashIndex]
            while(temp?.next != nil) {
                temp = temp?.next
            }
            temp?.next = newNode
        } else {
            dataMap[hashIndex] = newNode
        }
    }

    // get
    func get(for key: String) -> HashTableNode? {
        let hashIndex = hashFunction(key)
        if dataMap[hashIndex] == nil {
            return nil
        } else {
            var temp = dataMap[hashIndex]
            while(temp != nil) {
                if temp?.key == key { break }
                temp = temp?.next
            }
            return temp
        }
    }

    // all keys
    func keys() -> [String] {
        var allKeys = [String]()
        for index in 0..<self.size {
            var temp = dataMap[index]
            while(temp != nil) {
                allKeys.append(temp!.key)
                temp = temp?.next
            }
        }
        return allKeys
    }

    // hash function
    private func hashFunction(_ key: String) -> Int {
        var hash = 0
        let keyElements = key.map { $0 }
        for index in 0..<keyElements.count {
            let ascii = Int(keyElements[index].asciiValue!)
            hash = (hash + ascii * 23) % self.size
        }
        return hash
    }

    // print hash table
    func printHashTable() {
        for index in 0..<size {
            print("\(index): ")
            if (dataMap[index] != nil) {
                var temp = dataMap[index]
                while(temp != nil) {
                    print("\(String(describing: temp!.key)): \(String(describing: temp!.value))")
                    temp = temp?.next
                }
            }
        }
    }
}

/*
// create a hash table
let ht = HashTable()

// set node
ht.set(key: "nails", value: 1200)
ht.set(key: "paint", value: 500)
ht.set(key: "doors", value: 1000)
ht.set(key: "windows", value: 1500)
ht.set(key: "tiles", value: 2200)
ht.set(key: "fan", value: 200)

// get
ht.get(for: "nails")?.value
ht.get(for: "paint")?.value
ht.get(for: "varnish")?.value

// keys
ht.keys()

// print table
ht.printHashTable()
*/


final class Graph {
    private var adjList = [String: Set<String>]()

    // add vertex
    func addVertex(_ vertex: String) -> Bool {
        if adjList[vertex] == nil {
            adjList[vertex] = []
            return true
        }
        return false
    }

    // add edge
    func addEdge(_ vertex1: String, _ vertex2: String) -> Bool {
        if adjList[vertex1] != nil && adjList[vertex2] != nil {
            adjList[vertex1]?.insert(vertex2)
            adjList[vertex2]?.insert(vertex1)
            return true
        }
        return false
    }

    // remove edge
    func removeEdge(_ vertex1: String, _ vertex2: String) -> Bool {
        if adjList[vertex1] != nil && adjList[vertex2] != nil {
            adjList[vertex1]?.remove(vertex2)
            adjList[vertex2]?.remove(vertex1)
            return true
        }
        return false
    }

    // remove vertex
    func removeVertex(_ vertex: String) -> Bool {
        if adjList[vertex] != nil {
            let edges = self.adjList[vertex]!
            for edge in edges {
                adjList[edge]?.remove(vertex)
            }
            adjList.removeValue(forKey: vertex)
            return true
        }
        return false
    }

    // printGraph
    func printGraph() {
        for (vertex, edges) in adjList {
            print("\(vertex): [", terminator: "")
            for edge in edges {
                print("\(edge) ", terminator: "")
            }
            print("]")
        }
    }
}

/*
 // create graph
 let graph = Graph()

 // add vertex
 graph.addVertex("A")
 graph.addVertex("B")
 graph.addVertex("C")
 graph.addVertex("D")

 // add edge
 graph.addEdge("A", "B")
 graph.addEdge("A", "C")
 graph.addEdge("C", "D")
 graph.addEdge("D", "B")

 // remove edge
 graph.removeEdge("A", "B")
 graph.removeEdge("A", "C")
 graph.removeEdge("D", "B")
 graph.removeEdge("C", "D")

 // remove vertex
 graph.removeVertex("A")
 graph.removeVertex("B")
 graph.removeVertex("C")
 graph.removeVertex("D")

 // print graph
 graph.printGraph()
 */


/*
 Heap:
 - Tree should be complete.
 - left child = (Index * 2) + 1
 - right child = (Index * 2) + 2
 - parent = (Index - 1) / 2
 */
final class Heap {
    private var heap: [Int] = []

    private func leftChild(_ index: Int) -> Int {
        (index * 2) + 1
    }

    private func rightChild(_ index: Int) -> Int {
        (index * 2) + 2
    }

    private func parent(_ index: Int) -> Int {
        (index - 1) / 2
    }

    private func swap(val1: Int, val2: Int) {
        let temp = self.heap[val1]
        self.heap[val1] = self.heap[val2]
        self.heap[val2] = temp
    }

    // insert
    func insert(value: Int) {
        self.heap.append(value)
        var current = self.heap.count - 1

        while(current > 0 && self.heap[current] > self.heap[parent(current)]) {
            swap(val1: current, val2: parent(current))
            current = parent(current)
        }
    }

    // remove
    func remove() -> Int? {
        if self.heap.isEmpty {
            return nil
        }

        let maxValue = self.heap.first
        if self.heap.count == 1 {
            self.heap.removeLast()
        } else {
            self.heap[0] = self.heap.last!
            self.heap.removeLast()
            self.sinkDown(0)
        }
        return maxValue
    }

    private func sinkDown(_ index: Int) {

    }
    // print heap
    func printHeap() {
        print(self.heap)
    }
}

// create heap
let heap = Heap()
heap.insert(value: 99)
heap.insert(value: 72)
heap.insert(value: 61)
heap.insert(value: 58)

// print heap
heap.printHeap()

heap.insert(value: 100)
heap.printHeap()

heap.insert(value: 75)
heap.printHeap()
