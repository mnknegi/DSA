
# Given the head of a singly linked list and an integer k.
# Rotate the list to the left by k positions and return the updated head.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def rotate_list(head, position):

  if head is None or position < 1:
    return
  
  lenght = 0
  curr = head

  pre = None
  temp = head

  while curr is not None:
    curr = curr.next
    lenght += 1

  position %= lenght

  for _ in range(position):
    pre = temp
    temp = temp.next

  if position == 0:
    return head

  temp_head = temp
  pre.next = None

  while temp.next:
    temp = temp.next

  temp.next = head
  return temp_head


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
  head.next.next.next.next = Node(5)

  print_linked_list(head)
  head1 = rotate_list(head, 3)
  print_linked_list(head1)

