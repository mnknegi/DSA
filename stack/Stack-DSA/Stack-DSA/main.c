//
//  main.c
//  Stack-DSA
//
//  Created by Mayank Negi on 29/01/24.
//

// MARK: - // C program for array implementation of stack

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

// A structure to represent a stack
struct Stack {
    int top;
    unsigned capacity;
    int* array;
};

// function to create a stack of given capacity. It initializes size of
// stack as 0
struct Stack* createStack(unsigned capacity)
{
    struct Stack* stack = (struct Stack*)malloc(sizeof(struct Stack));
    stack->top = -1;
    stack->capacity = capacity;
    stack->array = (int*)malloc(capacity * sizeof(int));
    return stack;
}

/// Algorithm for isFull
/// begin
/// if top == capacity - 1 of the stack
///    return true
/// else
///    return false
/// end procedure

// Stack is full when top is equal to the last index
int isFull(struct Stack* stack) {
    return stack->top == stack->capacity - 1;
}

/// Algorithm for isEmpty
/// begin
/// if top < 1
///    return true
/// else
///    return false
/// end procedure

// Stack is empty when top is equal to -1
int isEmpty(struct Stack* stack) {
    return stack->top == -1;
}

/// Algorithm for push
/// begin
/// if stack is full
///    return
/// else
/// increment top
/// stack[top] assign value
/// end else
/// end procedure

// Function to add an item to stack.  It increases top by 1
void push(struct Stack* stack, int item) 
{
    if (isFull(stack)) {
        printf("Stack is full. Cannot push.");
        return;
    }
    else {
        stack->top = stack->top + 1;
        stack->array[stack->top] = item;
        printf("%d pushed to stack\n", item);
    }
}

/// Algorithm for pop
/// begin
/// if stack is empty
///    return
/// else
/// store value of stack[top]
/// decrement top
/// return value
/// end else
/// end procedure

// Function to remove an item from stack.  It decreases top by 1
int pop(struct Stack* stack)
{
    if (isEmpty(stack)) {
        printf("Stack is empty. Cannot pop.");
        return INT_MIN;
    }
    else {
        int item = stack->array[stack->top];
        stack->top = stack->top - 1;
        return item;
    }
}
/// Algorithm for Peek or Top
/// begin
/// return stack[top]
/// end procedure

// Function to return the top from stack without removing it
int peek(struct Stack* stack)
{
    if (isEmpty(stack)) {
        printf("Stack is empty. Cannot peek.");
        return INT_MIN;
    }
    else {
        int item = stack->array[stack->top];
        return item;
    }
}

// Driver program to test above functions
int main(int argc, const char * argv[]) {
    // insert code here...
    struct Stack* stack = createStack(5);
    push(stack, 2);
    push(stack, 4);
    push(stack, 6);
    push(stack, 8);
    push(stack, 10);

    printf("pop element from the stack %d\n", pop(stack));
    printf("pop element from the stack %d\n", pop(stack));

    printf("Top of the stack %d\n", peek(stack));

    return 0;
}
