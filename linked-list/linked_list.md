
# Linked List

A linked-list is a linear data structure in which the elements are not stored in contiguous memory location. The elements in the linked-list are linked using pointers. In other words a linked-list consists of nodes, where each node contains a data field and a reference link to the next node in the list.

`Node Structure` : A node in a linked list typically consists of two components:
`Data` : It holds the actual value or data associated with the node.
`Next Pointer` : It stores the memory address (reference) of the next node in the sequence.
`Head and Tail` : The linked list is accessed through the head node, which points to the first node in the list. The last node in the list points to `NULL` or `nullptr`, indicating the end of the list. This node is known as the tail node.


## Types of linked lists:

There are mainly three types of linked lists:

- `Single-linked list` : In a singly linked list, each node contains a reference to the next node in the sequence. Traversing a singly linked list is done in a forward direction.

```
/* A Single linked list node */ 
struct Node {
int data;
struct Node* next;
};
```

- `Double linked list` : In a doubly linked list, each node contains references to both the next and previous nodes. This allows for traversal in both forward and backward directions, but it requires additional memory for the backward reference.

```
/* Node of a doubly linked list */
struct Node {
int data;
struct Node* next; // Pointer to next node in DLL
struct Node* previous; // Pointer to previous node in DLL
}
```

- `Circular linked list` : In a circular linked list, the last node points back to the head node, creating a circular structure. It can be either singly or doubly linked.

## Operations on Linked Lists

- `Insertion` : Adding a new node to a linked list involves adjusting the pointers of the existing nodes to maintain the proper sequence. Insertion can be performed at the beginning, end, or any position within the list.

- `Deletion` : Removing a node from a linked list requires adjusting the pointers of the neighboring nodes to bridge the gap left by the deleted node. Deletion can be performed at the beginning, end, or any position within the list.

- `Searching` : Searching for a specific value in a linked list involves traversing the list from the head node until the value is found or the end of the list is reached.

## Advantages of Linked Lists

- `Dynamic Size` : Linked lists can grow or shrink dynamically, as memory allocation is done at runtime.
- `Insertion and Deletion` : Adding or removing elements from a linked list is efficient, especially for large lists.
- `Flexibility` : Linked lists can be easily reorganized and modified without requiring a contiguous block of memory.

## Disadvantages of Linked Lists

- `Random Access` : Unlike arrays, linked lists do not allow direct access to elements by index. Traversal is required to reach a specific node.
- `Extra Memory` : Linked lists require additional memory for storing the pointers, compared to arrays.
