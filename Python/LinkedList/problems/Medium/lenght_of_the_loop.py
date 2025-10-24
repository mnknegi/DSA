
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def length_of_the_loop(head):

  if head is None:
    return 0
  
  slow = head
  fast = head

  while fast is not None and fast.next is not None:
    slow = slow.next
    fast = fast.next.next

    if slow == fast:
      return countNodes(slow)

  return 0

def countNodes(node):
  result = 1
  temp = node
  while temp.next is not node:
    result += 1
    temp = temp.next
  return result


if __name__ == "__main__":
  # head = None
  head = Node(1)
  head.next = Node(2)
  head.next.next = Node(3)
  head.next.next.next = Node(4)
  head.next.next.next.next = head.next

  print(f"Lenght of the loop is: {length_of_the_loop(head)}")