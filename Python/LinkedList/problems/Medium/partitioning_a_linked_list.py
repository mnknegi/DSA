
# Given a linked list and a value x 
# partition it such that all nodes less than x come first
# then all nodes with a value equal to x
# and finally nodes with a value greater than x. 
# The original relative order of the nodes in each of the three partitions should be preserved.

class Node:
  
  def __init__(self, value):
    self.value = value
    self.next = None

def partitioning_a_linked_list(head, key):

  left_head = Node(0)
  mid_head = Node(0)
  right_head= Node(0)

  left = left_head
  mid = mid_head
  right = right_head

  temp = head

  while temp:
    if temp.value < key:
      left = push(left, temp.value)
    elif temp.value > key:
      right = push(right, temp.value)
    else:
      mid = push(mid, temp.value)
    temp = temp.next

  left.next = mid_head.next
  mid.next = right_head.next

  return left_head.next

def push(curr_ref, value):
  new_node = Node(value)
  curr_ref.next = new_node
  curr_ref = new_node
  return curr_ref


# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  # head = None
  head = Node(3)
  head.next = Node(5)
  head.next.next = Node(4)
  head.next.next.next = Node(8)
  head.next.next.next.next = Node(2)

  print_linked_list(head)
  head_of_new_list = partitioning_a_linked_list(head, 5)
  print_linked_list(head_of_new_list)

  print()

  head = Node(10)
  head.next = Node(4)
  head.next.next = Node(20)
  head.next.next.next = Node(10)
  head.next.next.next.next = Node(3)

  print_linked_list(head)
  head_of_new_list = partitioning_a_linked_list(head, 3)
  print_linked_list(head_of_new_list)