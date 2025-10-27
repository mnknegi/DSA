
# Given the heads of two sorted linked lists.
# Merge them into a single sorted linked list and return the head of the merged list.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def merge_two_sorted_lists(list_head1, list_head2):

  if list_head1 is None and list_head2 is None:
    return
  
  result = Node(0)
  temp_result = result

  temp1 = list_head1
  temp2 = list_head2

  while temp1 is not None and temp2 is not None:
    if temp1.value < temp2.value:
      temp_result = push(temp_result, temp1.value)
      temp1 = temp1.next
    elif temp1.value > temp2.value:
      temp_result = push(temp_result, temp2.value)
      temp2 = temp2.next
    else:
      temp_result = push(temp_result, temp1.value)
      temp1 = temp1.next
      temp2 = temp2.next

  if temp1:
    temp_result.next = temp1
  
  if temp2:
    temp_result.next = temp2
    
  return result.next


def push(tail_ref, value):
  new_node = Node(value)
  tail_ref.next = new_node
  tail_ref = new_node
  return tail_ref


# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  # head = None
  head1 = Node(5)
  head1.next = Node(10)
  head1.next.next = Node(15)
  head1.next.next.next = Node(40)
  
  print_linked_list(head1)

  head2 = Node(2)
  head2.next = Node(3)
  head2.next.next = Node(20)
  
  print_linked_list(head2)

  print()

  merged_list_head = merge_two_sorted_lists(head1, head2)
  print_linked_list(merged_list_head)