
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def delete_kth_node(head, k):
  
  if head is None or k <= 0:
    return head
  
  prev = None
  temp = head

  temp_index = 0

  while temp is not None:
    temp_index += 1

    if temp_index % k == 0:
      if prev is not None:
        prev.next = temp.next
      else:
        head = temp.next
    else:
      prev = temp
    temp = temp.next

  return head


# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")

if __name__ == "__main__":
  head = None
  head = Node(1)
  head.next = Node(2)
  head.next.next = Node(3)
  head.next.next.next = Node(4)
  head.next.next.next.next = Node(5)
  head.next.next.next.next.next = Node(6)
  head.next.next.next.next.next.next = Node(7)

  head = delete_kth_node(head, 4)

  print_linked_list(head)