
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

# USING SINGLE POINTER
def swap_pairwise_using_single_pointer(head):
  
  if head is None or head.next is None:
    return
  
  current = head

  while current is not None and current.next is not None:
    current.value, current.next.value = current.next.value, current.value
    current = current.next.next

  return head

# USING TWO POINTERS
def swap_pairwise_using_two_pointers(head):

  if head is None or head.next is None:
    return
  
  before = head
  after = head.next

  while after is not None:
    temp_value = after.value
    after.value = before.value
    before.value = temp_value

    if after.next is None or after.next.next is None:
      break

    before = after.next
    after = after.next.next

  return head

# USING RECURSION
def swap_pairwise_using_recursion(head):

  if head is None or head.next is None:
    return
  
  head.value, head.next.value = head.next.value, head.value

  swap_pairwise_using_recursion(head.next.next)

  return head

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
  head.next.next.next.next.next = Node(6)

  print_linked_list(head)
  # head = swap_pairwise_using_two_pointers(head)
  # head = swap_pairwise_using_recursion(head)
  head = swap_pairwise_using_single_pointer(head)
  print_linked_list(head)