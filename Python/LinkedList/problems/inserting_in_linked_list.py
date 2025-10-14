
class Node:
  
  def __init__(self, value):
    self.value = value
    self.next = None

# AT THE FRONT OF THE LINKED LIST
def prepend(head, value):
  new_node = Node(value)
  new_node.next = head
  return new_node


# BEFORE A GIVEN NODE
def insert_before(head, value, key):
  if head is None: # if no node in linked list, don't insert into it.
    return None
  
  new_node = Node(value)
  if head.value == key:
    new_node.next = head
    return new_node

  pre = head
  temp = head

  while temp is not None and temp.value != key:
    pre = temp
    temp = temp.next

    if temp.value == key:
      pre.next = new_node
      new_node.next = temp

  return head


# AFTER A GIVEN NODE
def insert_after(head, value, key):

  temp = head

  while temp is not None:
    if temp.value == key:
      break
    temp = temp.next

  if temp is None: # key not found
    return head
  
  new_node = Node(value)
  new_node.next = temp.next
  temp.next = new_node
    
  return head

# AT A SPECIFIC POSITION


# AT THE END OF THE LINKED LIST


# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  head = Node(1)
  head.next = Node(2)
  head.next.next = Node(4)
  head.next.next.next = Node(6)

  head = prepend(head, 0)
  head = insert_before(head, value=3, key=4)
  head = insert_after(head, value=5, key=4)

  print_linked_list(head)