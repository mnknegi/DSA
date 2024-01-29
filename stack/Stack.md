
# Stack

**Q:** What is a stack?
**A:** Stack is a linear data structure that follows `LIFO(Last In First Out)`. This means that the last element added to the stack is the first one to be removed.

> A stack is a linear data structure in which the insertion of a new element and removal of an existing element takes place at the same end represented as the top of the stack.

A stack can perform two main operations:

- `Push` : Adding an element to the top of the stack.
- `Pop` : Removing the element from the top of the stack.

Additionally, there is often an operation called `Peek` or `Top` that allows you to view the element at the top of the stack without removing it.
Some common applications include managing function calls in a computer program (call stack), undo mechanisms in software, and in solving problems that involve reversing or tracking elements in a last-in, first-out manner.

The most important thing in the stack is to maintain the `pointer to the top of the stack`, which is the last element to be inserted because we can insert element only at the top of the stack.


**Q:** What are the basic operations on stack?
**A:** 
Primary Stack Operations:

- `push()` : To insert an element into top of the stack.
- `pop()` : To remove an element from the top of the stack.

Auxiliary Stack Operations:

- `top() or Peek()` : Returns the top element of the stack without removing it.
- `isEmpty()` : returns true if stack is empty else false.
- `size()` : returns the size of stack.
- `isFull()` : In some implementations, particularly in fixed-size arrays, there might be an isFull operation to check if the stack has reached its maximum capacity.


**Q:** How many different type of stacks are there?
**A:** `Array-based Stack` : In this implementation, a stack is represented using an array. The array has a fixed size, and the stack pointer is used to keep track of the top of the stack. The push and pop operations involve updating the stack pointer and modifying the array.

`Linked List-based Stack` : In this implementation, a stack is represented using a linked list. Each node in the linked list contains an element and a reference to the next node. The top of the stack is represented by the first node in the linked list.

`Dynamic Stack` : This type of stack allows dynamic resizing, either by using a dynamic array or a linked list. The size of the stack can grow or shrink as needed.

`Fixed-size Stack` : Some implementations use a fixed-size array to represent a stack. In this case, the size of the stack is predetermined, and attempting to push an element onto a full stack or pop from an empty stack results in an error.

`Two-Stack Queue` : This is a specialized implementation where two stacks are used to simulate a queue. One stack is used for enqueue operations, and the other is used for dequeue operations.

`Function Call Stack` : In the context of programming languages, there is a call stack that keeps track of function calls and returns during program execution. Each function call creates a new stack frame, and the stack is used to manage the flow of control and local variables.

`Undo-Redo Stack` : This type of stack is used in computer programs to allow users to undo and redo actions.`
