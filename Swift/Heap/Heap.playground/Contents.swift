
/** Heap **/
/*
 - Each node has a value that is greated than each of its descendents.
 - Maximum value is always going to be on the top for `MaxHeap`.
 - For MinHeap it is opposite to the `MaxHeap`.
 - It is also a kind of binary tree where the tree is always complete.
 */

final class Heap {
    private var heap: [Int] = []

    // Helper functions
    private func leftChild(index: Int) -> Int {
        (index * 2) + 1
    }

    private func rightChild(index: Int) -> Int {
        (index * 2) + 2
    }

    private func parent(of index: Int) -> Int {
        (index - 1) / 2
    }

    private func swap(at index1: Int, with index2: Int) {
        (heap[index1], heap[index2]) = (heap[index2], heap[index1])
    }

    private func sinkDown(_ index: Int) {
        var indx = index
        var maxIndex = index

        while(true) {
            let leftIndex = self.leftChild(index: indx)
            let rightIndex = self.rightChild(index: indx)

            if (leftIndex < self.heap.count && self.heap[leftIndex] > self.heap[maxIndex]) {
                maxIndex = leftIndex
            }

            if (rightIndex < self.heap.count && self.heap[rightIndex] > self.heap[maxIndex]) {
                maxIndex = rightIndex
            }

            if (maxIndex != indx) {
                self.swap(at: maxIndex, with: indx)
                indx = maxIndex
            } else {
                return
            }
        }
    }

    // Member functions
    func insert(_ value: Int) {
        self.heap.append(value) // append new value at the end
        var current = self.heap.count - 1

        /// break the loop if current reached the root.
        /// and value at current index is less then value at the parent of it.
        while(current > 0 && heap[current] > heap[parent(of: current)]) {
            swap(at: current, with: parent(of: current))
            current = parent(of: current)
        }
    }

    // can only remove top item.
    func remove() -> Int? {
        if self.heap.isEmpty {
            return nil
        }

        let maxValue = self.heap.first

        if self.heap.count == 1 {
            self.heap.removeFirst()
        } else {
            self.heap[0] = self.heap.removeLast()
            sinkDown(0)
        }

        return maxValue
    }

    func printHeap() {
        print("[\(self.heap.map { "\($0)" }.joined(separator: ", "))]")
    }
}

let heap = Heap()
heap.insert(92)
heap.insert(72)
heap.insert(61)
heap.insert(52)

heap.printHeap()

heap.insert(100)

heap.printHeap()

heap.remove()
