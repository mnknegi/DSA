
# Given two lists sorted in increasing order, 
# create and return a new list representing the intersection of the two lists. 
# The new list should be made with its own memory — the original lists should not be changed. 

class Node:
  
  def __init__(self, value):
    self.value = value
    self.next = None

def intersection_of_two_lists(head_list1, head_list2):

  result = Node(0)
  curr = result

  while head_list1 is not None and head_list2 is not None:
    if head_list1.value < head_list2.value:
      head_list1 = head_list1.next
    elif head_list1.value > head_list2.value:
      head_list2 = head_list2.next
    else:
      curr = push(curr, head_list1.value)
      head_list1 = head_list1.next
      head_list2 = head_list2.next
    
  return result.next

def push(curr_ref, value):
  new_node = Node(value)
  curr_ref.next = new_node
  curr_ref = new_node

  return curr_ref


# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  head_list1 = Node(1)
  head_list1.next = Node(2)
  head_list1.next.next = Node(3)
  head_list1.next.next.next = Node(5)
  head_list1.next.next.next.next = Node(6)
  head_list1.next.next.next.next.next = Node(8)
  head_list1.next.next.next.next.next.next = Node(9)

  head_list2 = Node(2)
  head_list2.next = Node(3)
  head_list2.next.next = Node(4)
  head_list2.next.next.next = Node(6)
  head_list2.next.next.next.next = Node(7)
  head_list2.next.next.next.next.next = Node(9)

  print_linked_list(head_list1)
  print_linked_list(head_list2)

  head = intersection_of_two_lists(head_list1, head_list2)
  print_linked_list(head)