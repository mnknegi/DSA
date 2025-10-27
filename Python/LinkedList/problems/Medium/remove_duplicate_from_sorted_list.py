
# Given a linked list sorted in non-decreasing order. 
# Return the list by deleting the duplicate nodes from the list. 
# The returned list should also be in non-decreasing order.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def remove_duplicates(head):
  
  if head is None:
    return
  
  pre = head
  temp = head.next

  while temp:
    if pre.value == temp.value:
      pre.next = temp.next
    else:
      pre = temp
      
    temp = temp.next
  
  return head

def remove_duplicates_recursively(head):

  if head is None:
    return
  
  if head.value == head.next.value:
    head.next = head.next.next
    remove_duplicates(head)
  else:
    remove_duplicates(head.next)

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
  head = Node(11)
  head.next = Node(11)
  head.next.next = Node(11)
  head.next.next.next = Node(21)
  head.next.next.next.next = Node(43)
  head.next.next.next.next.next = Node(43)
  head.next.next.next.next.next.next = Node(60)
  

  print_linked_list(head)
  # head = remove_duplicates(head)
  head = remove_duplicates_recursively(head)
  print_linked_list(head)