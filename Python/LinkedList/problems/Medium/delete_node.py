
# Given a pointer to a node to be deleted, delete the node.
# Note that we don’t have a pointer to the head node.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def delete_node(node_to_delete):

  if node_to_delete is None or node_to_delete.next is None:
    return
  
  temp = node_to_delete.next
  node_to_delete.value = temp.value
  node_to_delete.next = temp.next

  del temp


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

  delete_node(head.next.next) # 3

  print_linked_list(head)