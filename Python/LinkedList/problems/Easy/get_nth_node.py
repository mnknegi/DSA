
class Node:
  
  def __init__(self, value):
    self.value = value
    self.next = None

def get_nth_node_iteratively(head, position):

  if head is None or position < 1:
    return -1
  
  temp = head
  for _ in range(1, position):
    temp = temp.next

    if temp is None:
      return -1
    
  return temp.value


def get_nth_node_recursively(head, position):

  if head is None or position < 1:
    return -1
  
  if position == 1:
    return head.value
  else:
    return get_nth_node_recursively(head.next, position - 1)

def print_linked_list(head):
  temp = head
  print()
  while temp is not None:
    print(temp.value, end=" -> ")
    temp = temp.next
  print("nil")
  print()

if __name__=="__main__":
  # head = None
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)

  print_linked_list(head)

  # print(get_nth_node_iteratively(head, 0))
  print(get_nth_node_recursively(head, 5))