
// MARK: - Node Definition
class Node<T: Equatable> {
    var value: T
    var left: Node?
    var right: Node?

    init(_ value: T) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}

// MARK: - Binary Tree Definition
class BinaryTree<T: Equatable> {
    var root: Node<T>?

    init(root: Node<T>?) {
        self.root = root
    }

    // DFS: It is a traversal algorithm that explores as far as possible along a branch before backtracking.
    // MARK: Traversals (Depth First Search or DFS)
    // Inorder: Left → Root → Right
    func inOrderTraversal(_ node: Node<T>?) {
        guard let node else { return }

        inOrderTraversal(node.left)
        print(node.value, terminator: " ")
        inOrderTraversal(node.right)
    }

    // Preorder: Root → Left → Right
    func preOrderTraversal(_ node: Node<T>?) {
        guard let node else { return }

        print(node.value, terminator: " ")
        preOrderTraversal(node.left)
        preOrderTraversal(node.right)
    }

    // Postorder: Left → Right → Root
    func postOrderTraversal(_ node: Node<T>?) {
        guard let node else { return }

        postOrderTraversal(node.left)
        postOrderTraversal(node.right)
        print(node.value, terminator: " ")
    }

    // BFS: It is a traversal algorithm that explores nodes level by level before going deeper.
    // It visits all neighbours at the current depth before moving to the next depth level.
    // MARK: Level Order Traversal (Breadth First Search or BFS)
    func levelOrderTraversal(_ node: Node<T>?) {

        guard let node else { return }

        var queue: [Node<T>] = [node]

        while !queue.isEmpty {
            let currentNode = queue.removeFirst()

            print(currentNode.value, terminator: " ")

            if let left = currentNode.left {
                queue.append(left)
            }

            if let right = currentNode.right {
                queue.append(right)
            }
        }
    }

    // Height of a binary tree: DFS using recursion.
    func heightOfATreeUsingDFS(_ node: Node<T>?) -> Int {
        guard let node else { return 0 }
        let leftHeight = heightOfATreeUsingDFS(node.left)
        let rightHeight = heightOfATreeUsingDFS(node.right)
        return max(leftHeight, rightHeight) + 1
    }

    // Height of a binary tree: BFS using queue
    func heightOfATreeUsingBFS(_ node: Node<T>?) -> Int {
        var depth = 0
        guard let node else { return depth - 1 }

        var queue: [Node<T>] = [node]

        while !queue.isEmpty {
            let levelCount = queue.count

            for _ in 0..<levelCount {
                let currentNode = queue.removeFirst()

                if let left = currentNode.left {
                    queue.append(left)
                }

                if let right = currentNode.right {
                    queue.append(right)
                }
            }

            depth += 1
        }

        return depth - 1
    }

    // MARK: - Insertion(Done using BFS)
    // The task is to insert the new element into the first position available in level order manner.
    func insert(_ value: T) {
        let newNode = Node(value)

        guard let root else {
            self.root = newNode
            return
        }

        var queue: [Node<T>] = [root]

        while !queue.isEmpty {
            let currentNode = queue.removeFirst()

            if let left = currentNode.left {
                queue.append(left)
            } else {
                currentNode.left = newNode
                break
            }

            if let right = currentNode.right {
                queue.append(right)
            } else {
                currentNode.right = newNode
                break
            }
        }
    }

    // MARK: - Deletion(Done using BFS)
    // Find the node to delete.
    // Find the deepest (last) node in the tree (rightmost node of the last level).
    // Replace the value of the node to delete with the deepest node’s value.
    // Delete the deepest node.
    func deletion(_ value: T) {
        guard let root else { return }

        if root.left == nil && root.right == nil {
            if root.value == value {
                self.root = nil
            } else { return }
        }

        var queue: [Node<T>] = [root]
        var targetNode: Node<T>? = nil
        var lastNode: Node<T>? = nil
        var parentNode: Node<T>? = nil

        while !queue.isEmpty {
            let currentNode = queue.removeFirst()

            if currentNode.value == value {
                targetNode = currentNode
            }

            if let left = currentNode.left {
                parentNode = currentNode
                lastNode = left
                queue.append(left)
            }

            if let right = currentNode.right {
                parentNode = currentNode
                lastNode = right
                queue.append(right)
            }
        }

        // replace nodes
        if let targetNode, let lastNode {
            targetNode.value = lastNode.value

            // remove last node
            if parentNode?.left === lastNode {
                parentNode?.left = nil
            } else if parentNode?.right === lastNode {
                parentNode?.right = nil
            }
        }
    }
}

let root = Node(0)
let first = Node(1)
let second = Node(2)
let third = Node(3)
let fourth = Node(4)
let fifth = Node(5)

root.left = first
root.right = second
first.left = third
first.right = fourth
second.left = fifth

let bt = BinaryTree<Int>(root: root)
bt.inOrderTraversal(root)
print("")

bt.preOrderTraversal(root)
print("")

bt.postOrderTraversal(root)
print("")

bt.levelOrderTraversal(root)
print("")

let btHeightUsingDFS = bt.heightOfATreeUsingDFS(root) - 1
print(btHeightUsingDFS)

let btHeightUsingBFS = bt.heightOfATreeUsingBFS(root)
print(btHeightUsingBFS)

bt.insert(6)
bt.levelOrderTraversal(root)
print("")

let nilBT: BinaryTree<Int>? = BinaryTree(root: nil)
nilBT?.insert(1)
nilBT?.insert(3)
nilBT?.insert(5)
nilBT?.levelOrderTraversal(nilBT?.root)
print("")

bt.deletion(3)
bt.levelOrderTraversal(root) // modification is happening in value property of the reference of root variable.
print("")

bt.deletion(1)
bt.levelOrderTraversal(root)
print("")

nilBT?.deletion(5)
nilBT?.deletion(3)
nilBT?.deletion(1)
nilBT?.levelOrderTraversal(nilBT?.root) // root variable is getting replaced inside deletion funciton for single root node.
print("")
