
# Queue Data Structure

**Q:** What is queue data structure?
**A:** A Queue is defined as a `linear data structure` that is open at both ends and the operations are performed in `First In First Out (FIFO)` order. We define a queue to be a list in which all additions to the list are made at one end, and all deletions from the list are made at the other end. The element which is first pushed into the order, the operation is first performed on that.
Position of the entry in a queue ready to be served, that is, the first entry that will be removed from the queue, is called the `front` of the queue(sometimes, `head` of the queue), similarly, the position of the last entry in the queue, that is, the one most recently added, is called the `rear` (or the `tail`) of the queue. See the below figure.

**Q:** What are the basic operations on Queue?
**A:** 
- `enqueue()`: Inserts an element at the end of the queue i.e. at the rear end.
- `dequeue()`: This operation removes and returns an element that is at the front end of the queue.
- `front()`: This operation returns the element at the front end without removing it.
- `rear()`: This operation returns the element at the rear end without removing it.
- `isEmpty()`: This operation indicates whether the queue is empty or not.
- `isFull()`: This operation indicates whether the queue is full or not.
- `size()`: This operation returns the size of the queue i.e. the total number of elements it contains. 

**Q:** What are the different types of Queues?
**A:** 
- `Input Restricted Queue` : This is a simple queue. In this type of queue, the input can be taken from only one end but deletion can be done from any of the ends.
- `Output Restricted Queue` : This is also a simple queue. In this type of queue, the input can be taken from both ends but deletion can be done from only one end.
- `Circular Queue` : This is a special type of queue where the last position is connected back to the first position. Here also the operations are performed in FIFO order.
- `Double-Ended Queue (Dequeue)` : In a double-ended queue the insertion and deletion operations, both can be performed from both ends.
- `Priority Queue` : A priority queue is a special queue where the elements are accessed based on the priority assigned to them.
