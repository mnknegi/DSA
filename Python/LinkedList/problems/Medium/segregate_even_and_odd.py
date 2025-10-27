
# Given a link list, modify the list such that all the even numbers appear before all the odd numbers in the modified list.
# The order of appearance of numbers within each segregation should be the same as that in the original list.

# NOTE: Don't create a new linked list, instead rearrange the provided one.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

def segregate_even_and_odd(head):

  if head is None:
    return
  
  end = head
  while end.next:
    end = end.next

  curr = head
  pre = head
  temp = head.next

  while temp:
    if (curr.value % 2 != 0 and temp.value % 2 == 0
        or curr.value % 2 == 0 and temp.value % 2 != 0):
      pre = temp
      temp = temp.next
    else:
      pre.next = None
      end.next = curr.next
      curr.next = temp
      end = pre
      curr = temp
      pre = curr
      temp = temp.next
  

# PRINT LINKED LIST
def print_linked_list(head):
  temp = head
  while temp is not None:
    print(f"{temp.value}", end= " -> ")
    temp = temp.next
  print("nil")


if __name__ == "__main__":
  # head = None
  head = Node(0)
  head.next = Node(1)
  head.next.next = Node(3)
  head.next.next.next = Node(4)
  head.next.next.next.next = Node(6)

  print_linked_list(head)

  segregate_even_and_odd(head)

  print_linked_list(head)