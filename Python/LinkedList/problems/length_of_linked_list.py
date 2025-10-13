
class Node:
  
  def __init__(self, value):
    self.value = value
    self.next = None

def get_lenght_iteratively(head):
  count = 0

  if head is None:
    return count

  temp = head

  while temp is not None:
    count += 1
    temp = temp.next

  return count

def get_length_recursively(head):

  if head is None:
    return 0
  
  return 1 + get_length_recursively(head.next)

if __name__ == "__main__":
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)
  head.next.next.next.next = Node(4)

  # print(f"# of nodes in Linked List: {get_lenght_iteratively(head)}")
  print(f"# of nodes in Linked List: {get_length_recursively(head)}")