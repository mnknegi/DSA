
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

# DELETE ENTIRE LINKED LIST
def delete_linked_list(head):

  # return None
  
  while head is not None:
    temp = head.next
    del head
    head = temp
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
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)

  print(delete_linked_list(head))