
# Given the head of singly linked list, find middle node of the linked list.

# If the number of nodes is odd, return the middle node.
# If the number of nodes is even, there are two middle nodes, so return the second middle node.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def middle_node(head):

  if head is None:
    return None

  slow = head
  fast = head
  
  while fast is not None and fast.next is not None:
    slow = slow.next
    fast = fast.next.next

  return slow.value


if __name__ == "__main__":
  # head = None
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)
  head.next.next.next.next = Node(4)
  head.next.next.next.next.next = Node(5)

print(f"Middle node is: {middle_node(head)}")