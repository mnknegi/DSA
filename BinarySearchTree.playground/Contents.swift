
final class Node {
    var value: Int
    var left: Node?
    var right: Node?

    init(_ value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}

final class BinarySearchTree {
    var root: Node?

    init() {
        self.root = nil
    }

    // insert
    func insert(_ value: Int) {
        let newNode = Node(value)
        // if BSt is empty.
        if root == nil {
            root = newNode
            return
        }

        var temp = root
        while(temp != nil) {
            if newNode.value == temp!.value { return }
            if newNode.value < temp!.value {
                if temp?.left == nil {
                    temp?.left = newNode
                    break
                }
                temp = temp?.left
            } else {
                if temp?.right == nil {
                    temp?.right = newNode
                    break
                }
                temp = temp?.right
            }
        }
    }

    // contains
    func contains(_ value: Int) -> Bool {
        if self.root == nil { return false } // technically we don't need this line.
        var temp = self.root
        while(temp != nil) {
            if temp?.value == value { return true }
            if value < temp!.value {
                // search left
                temp = temp?.left
            } else {
                // search right
                temp = temp?.right
            }
        }
        return false
    }
}

var bst = BinarySearchTree()
//print(bst.root)

bst.insert(10)
bst.insert(5)
bst.insert(12)
bst.insert(2)
bst.insert(7)

// insert
print(bst.root?.left?.right?.value)

// contains
print(bst.contains(12))
print(bst.contains(17))
