//
//  main.c
//  Singly-Linked-List
//
//  Created by Mayank Negi on 04/02/24.
//

#include <stdio.h>
#include <stdlib.h>

// Node structure for the linked list
struct Node {
    int data;
    struct Node* next;
};

// Function to create a new node with given data
struct Node* createNode(int data) 
{
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    if (newNode == NULL) {
        printf("Memory allocation failed.\n");
        exit(EXIT_FAILURE);
    }
    newNode->data = data;
    newNode->next = NULL;
    return newNode;
}

// Function to insert a new node at the beginning of the linked list
struct Node* insertNode(struct Node* head, int data) 
{
    struct Node* newNode = createNode(data);
    newNode->next = head;
    return newNode;
}

void updateNode(struct Node* head, int oldData, int newData)
{
    struct Node* current = head;
    while (current != NULL) {
        if (current->data == oldData) {
            current->data = newData;
            return;
        }
        current = current->next;
    }
    printf("Node with data %d not found.\n", oldData);
}

/*  TODO: Required review
 
struct Node* deleteNode(struct Node* head, int data)
{
    struct Node *current = head, *prev = NULL;

    // Traverse the list to find the node to be deleted
    while (current != NULL && current->data != data) {
        prev = current;
        current = current->next;
    }

    // If the node with the key is found
    if (current != NULL) {
        // Update the previous node's next pointer
        if (prev != NULL) {
            prev->next = current->next;
        } else {
            // If the node to be deleted is the head
            head = current->next;
        }

        // Free the memory of the node
        free(current);
    } else {
        printf("Node with data %d not found.\n", data);
    }

    return head;
}
*/

// Function to print the elements of the linked list
void printLinkedList(struct Node* head)
{
    struct Node* current = head;
    while (current != NULL) {
        printf("%d -> ", current->data);
        current = current->next;
    }
    printf("NULL\n");
}

// Function to free the memory allocated for the linked list
void freeLinkedList(struct Node* head)
{
    struct Node* current = head;
    struct Node* next;
    while (current != NULL) {
        next = current->next;
        free(current);
        current = next;
    }
}

int main(int argc, const char * argv[]) {

    // Initialize an empty linked list
    struct Node* head = NULL;

    // Insert elements at the beginning of the linked list
    head = insertNode(head, 3);
    head = insertNode(head, 7);
    head = insertNode(head, 9);

    // Print the linked list
    printf("Linked List: ");
    printLinkedList(head);

    updateNode(head, 7, 12);

    // Print the linked list
    printf("Linked List: ");
    printLinkedList(head);

//    deleteNode(head, 9);
//
//    // Print the linked list
//    printf("Linked List: ");
//    printLinkedList(head);

    // Free the memory allocated for the linked list
    freeLinkedList(head);

    return 0;
}
