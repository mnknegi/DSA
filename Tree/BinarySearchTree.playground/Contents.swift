
/** Binary Search Tree */

/*
 Full: Every node points to either 2 nodes or 0 nodes.
 Prefect: Any level in the tree that has any nodes that is completely filled all the way across.
 Complete: filling a tree left to right with no gaps.

 If you take any node in BST, all nodes below it to the right are going to be greater than that node and everything to the left is going to be less than.

 Time complexity: omega of (log n)[divide and conquer](best case)
 O(n) (worse case)
 */

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

    var root: Node? = nil

    func insert(_ value: Int) -> Bool {
        let newNode = Node(value)

        guard let root else {
            self.root = newNode
            return true
        }

        var temp: Node? = root
        while let node = temp {
            if node.value > newNode.value {
                if node.left == nil {
                    node.left = newNode
                } else {
                    temp = node.left
                }
            }
            else if node.value < newNode.value {
                if node.right == nil {
                    node.right = newNode
                } else {
                    temp = node.right
                }
            }
            else { return false }
        }
        return true
    }

    func contains(_ value: Int) -> Bool {
        var temp = root
        while let node = temp {
            if node.value == value { return true }
            else if node.value > value { temp = node.left }
            else { temp = node.right }
        }
        return false
    }
}

let bst = BinarySearchTree()
bst.insert(47)
bst.insert(21)
bst.insert(76)
bst.insert(52)
bst.insert(18)
bst.insert(82)

bst.insert(27)

bst.contains(27)
bst.contains(47)
bst.contains(17)
