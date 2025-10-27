
# Given an unsorted linked list containing n nodes.
# The task is to remove duplicate nodes while preserving the original order.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def remove_duplicates(head):
  if head is None:
    return
  
  curr = head

  while curr:

    pre = curr
    temp = curr.next
    
    while temp:
      if curr.value == temp.value:
        pre.next = temp.next
      else:
        pre = temp
      temp = temp.next
    
    curr = curr.next
  
  return head


def remove_duplicates_recursively(head):
  
  if head is None:
    return
  
  unique_nodes = set()
  pre = None
  temp = head

  while temp:
    if temp.value in unique_nodes:
      pre.next = temp.next
    else:
      unique_nodes.add(temp.value)
      pre = temp
    temp = temp.next
    
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
  head = Node(12)
  head.next = Node(11)
  head.next.next = Node(12)
  head.next.next.next = Node(21)
  head.next.next.next.next = Node(41)
  head.next.next.next.next.next = Node(43)
  head.next.next.next.next.next.next = Node(21)

  print_linked_list(head)
  # head = remove_duplicates(head)
  head = remove_duplicates_recursively(head)
  print_linked_list(head)