
# Given the head of a singly linked list, the task is to find if given linked list is circular or not.
# A linked list is called circular if its last node points back to its first node.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def is_circular(head):

  if head is None or head.next is None:
    return True
  
  slow = head
  fast = head

  while fast is not None and fast.next is not None:
    slow = slow.next
    fast = fast.next.next

    if slow == fast:
      return True
  
  return False

if __name__ == "__main__":
  head = None
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)
  head.next.next.next.next = Node(4)
  head.next.next.next.next.next = Node(5)
  head.next.next.next.next.next.next = head

print(f"Linked List is circular: {is_circular(head)}")