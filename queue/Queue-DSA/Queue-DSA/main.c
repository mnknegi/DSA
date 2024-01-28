//
//  main.c
//  Queue-DSA
//
//  Created by Mayank Negi on 28/01/24.
//

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

// Creating an empty queue

// A structure to represent a queue
struct Queue {
    int front, rear, size;
    unsigned capacity;
    int* array;
};

// function to create a queue of given capacity
// It initializes size of queue as 0
struct Queue* createQueue(unsigned capacity)
{
    struct Queue* queue = (struct Queue*)malloc(sizeof(struct Queue));
    queue->capacity = capacity;
    queue->front = queue->size = 0;
    queue->rear = capacity - 1;
    queue->array = (int*)malloc(queue->capacity * sizeof(int));
    return queue;
};

// Queue is full when size becomes
// equal to the capacity
int isFull(struct Queue* queue)
{
    return queue->size == queue->capacity;
}

// Queue is empty when size is 0
int isEmpty(struct Queue* queue)
{
    return queue->size == 0;
}

// MARK: - Enqueue() operation

// Function to add an item to the queue.
// It changes rear and size

// Step 1: Check if the queue is full.
// Step 2: If the queue is full, return overflow error and exit.
// Step 3: If the queue is not full, increment the rear pointer to point to the next empty space.
// Step 4: Add the data element to the queue location, where the rear is pointing.
// Step 5: return success.

void enqueue(struct Queue* queue, int item)
{
    if (isFull(queue))
        printf("Queue is full. Cannot enqueue.");

    // this line ensures that the rear index always stays within the bounds of the array, making the queue circular and allowing it to effectively utilize the available space in the array.
    //For example, if queue->rear is at the last index of the array (queue->capacity - 1), incrementing it by 1 would make it equal to queue->capacity, but using modulo queue->capacity ensures that it wraps around to 0, indicating the first index of the array.
    else {
        queue->rear = (queue->rear + 1) % queue->capacity;
        queue->array[queue->rear] = item;
        queue->size = queue->size + 1;
        printf("%d enqueued to queue\n", item);
    }
}

// MARK: - Dequeue() operation

// Step 1: Check if the queue is empty.
// Step 2: If the queue is empty, return the underflow error and exit.
// Step 3: If the queue is not empty, access the data where the front is pointing.
// Step 4: Increment the front pointer to point to the next available data element.
// Step 5: The Return success.

int dequeue(struct Queue* queue)
{
    if (isEmpty(queue)) {
        printf("Queue is empty. Cannot dequeue.");
        return INT_MIN;
    }
    else {
        int item = queue->array[queue->front];
        queue->front = (queue->front + 1) % queue->capacity;
        queue->size = queue->size - 1;
        return  item;
    }
}

// MARK: - front() operation

int front(struct Queue* queue)
{
    if (isEmpty(queue)) {
        printf("Queue is empty. Cannot find front.");
        return INT_MIN;
    }
    else {
        return queue->array[queue->front];
    }
}

// MARK: - rear() operation

int rear(struct Queue* queue)
{
    if (isEmpty(queue)) {
        printf("Queue is empty. Cannot find rear.");
        return INT_MIN;
    }
    else {
        return queue->array[queue->rear];
    }
}

// MARK: - Driver program to test above functions.

int main(void)
{
    struct Queue* queue = createQueue(5);
    enqueue(queue, 10);
    enqueue(queue, 20);
    enqueue(queue, 30);
    enqueue(queue, 40);
    enqueue(queue, 50);

    printf("%d dequeued from queue\n\n", dequeue(queue));
//    printf("%d dequeued from queue\n\n", dequeue(queue));
//    printf("%d dequeued from queue\n\n", dequeue(queue));
//    printf("%d dequeued from queue\n\n", dequeue(queue));
//    printf("%d dequeued from queue\n\n", dequeue(queue));

    printf("Front item is %d\n", front(queue));
    printf("Rear item is %d\n", rear(queue));

    return 0;
}

