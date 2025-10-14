
class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def search_element_in_linked_list_iteratively(head, value_to_search):

  temp = head

  while temp is not None:
    if temp.value == value_to_search:
      return True
    temp = temp.next
  
  return False

def search_element_in_linked_list_recursively(head, value_to_search):

  if head is None:
    return False

  if head.value == value_to_search:
    return True

  return search_element_in_linked_list_recursively(head.next, value_to_search)

if __name__ == "__main__":
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(2)
  head.next.next.next = Node(3)
  head.next.next.next.next = Node(4)
  head.next.next.next.next.next = Node(5)

  value_to_search = 2
  # value_to_search = 6
  success = search_element_in_linked_list_recursively(head, value_to_search)
  if success:
    print(f"Element found in linked list.")
  else:
    print("Element not found.")