
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def nth_from_end_two_pointer_approach(head, position):

  if head is None or position < 1:
    return -1
  
  before = head
  after = head
  for _ in range(position):

    if before is None:
      return -1

    before = before.next

  while before is not None:
    before = before.next
    after = after.next
  
  return after.value

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
  head = Node(1)
  head.next = Node(2)
  head.next.next = Node(3)

  print_linked_list(head)

  print(nth_from_end_two_pointer_approach(head, 0))