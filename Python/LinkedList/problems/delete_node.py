
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

# DELETE FIRST NODE
def remove_first(head):
  
  if head is None:
    return None
  
  temp = head.next
  del head

  return temp

# DELETE ANY NODE
def remove(head, index):
  
  if index == 0:
    return remove_first(head)
    
  pre = head
  temp = head

  for _ in range(index):
    pre = temp
    temp = temp.next

    if temp is None:
      return head
    
  pre.next = temp.next
  del temp
  return head

# DELETE LAST NODE
def remove_last(head):
  
  if head is None:
    return None
  
  if head.next is None:
    return None
  
  pre = head
  temp = head
  while temp.next is not None:
    pre = temp
    temp = temp.next
  
  pre.next = None
  del temp
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
  head.next.next.next.next = Node(4)
  head.next.next.next.next.next = Node(5)

  # DELETE FIRST NODE
  head = remove_first(head)

  # DELETE ANY NODE
  head = remove(head, 3)

  # DELETE LAST NODE
  head = remove_last(head)

  # PRINT LINKED LIST
  print_linked_list(head)