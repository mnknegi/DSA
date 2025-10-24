
# Given the head of a linked list, reverse the list and return the new head.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def reverse_linked_list(head):
  
  if head is None or head.next is None:
    return
  
  before = None
  after = head.next
  temp = head

  while temp is not None:
    after = temp.next
    temp.next = before
    before = temp
    temp = after

  return before

def print_linked_list(head):
  temp = head
  print()
  while temp is not None:
    print(temp.value, end=" -> ")
    temp = temp.next
  print("nil")
  print()


if __name__ == "__main__":
  head = None
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)
  head.next.next.next.next = Node(4)

  print_linked_list(head)
  head = reverse_linked_list(head)
  print_linked_list(head)