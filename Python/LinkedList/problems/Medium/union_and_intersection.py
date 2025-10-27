
# Given two singly Linked Lists
# Create union and intersection lists that contain the union and intersection of the elements present in the given lists.
# Each of the two linked lists contains distinct node values.
# Note: The order of elements in output lists doesn’t matter. 

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

# UNION
def union(list_head1, list_head2):

  if list_head1 is None or list_head2 is None:
    return
  
  seen = set()
  union_result = None

  temp1 = list_head1
  
  while temp1 is not None:
    seen.add(temp1.value)
    temp1 = temp1.next

  temp2 = list_head2

  while temp2 is not None:
    if temp2.value not in seen:
      new_node = Node(temp2.value)
      new_node.next = union_result
      union_result = new_node
    temp2 = temp2.next

  for value in seen:
    new_node = Node(value)
    new_node.next = union_result
    union_result = new_node

  return union_result

# INTERSECTION
def intersection(list_head1, list_head2):

  if list_head1 is None or list_head2 is None:
    return
  
  seen = set()
  intersection_result = None

  temp1 = list_head1
  
  while temp1 is not None:
    seen.add(temp1.value)
    temp1 = temp1.next

  temp2 = list_head2

  while temp2 is not None:
    if temp2.value in seen:
      new_node = Node(temp2.value)
      new_node.next = intersection_result
      intersection_result = new_node
    temp2 = temp2.next

  return intersection_result


# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  # head = None
  head1 = Node(10)
  head1.next = Node(15)
  head1.next.next = Node(4)
  head1.next.next.next = Node(20)
  
  print_linked_list(head1)

  head2 = Node(8)
  head2.next = Node(4)
  head2.next.next = Node(2)
  head2.next.next.next = Node(10)
  
  print_linked_list(head2)

  print()

  union = union(head1, head2)
  intersection = intersection(head1, head2)
  print_linked_list(union)
  print_linked_list(intersection)