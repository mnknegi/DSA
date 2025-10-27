
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

# USING FLOYD's CYCLE-FINDING ALGORITHM
def detect_loop(head):

  if head is None:
    return False
  
  slow = head
  fast = head

  while fast.next is not None and fast.next.next is not None:
    slow = slow.next
    fast = fast.next.next

    if slow == fast:
      return True
    
  return False


# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  # head = None
  head = Node(1)
  head.next = Node(2)
  head.next.next = Node(3)
  head.next.next.next = Node(4)
  head.next.next.next.next = head.next

  print(f"Linked List has loop: {detect_loop(head)}")