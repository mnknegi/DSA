
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def print_linked_list_iteratively(head):
  if head is None:
    return
  
  temp = head
  while temp is not None:
    print(temp.value, end=" -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)
  head.next.next.next.next = Node(4)
  head.next.next.next.next.next = Node(5)

  print(print_linked_list_iteratively(head))
