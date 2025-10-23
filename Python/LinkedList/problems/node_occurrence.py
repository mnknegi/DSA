
# Given a singly linked list and a key, the task is to count the number of occurrences of the given key in the linked list.

class Node:

  def __init__(self, value):
    self.value = value
    self.next = None

# time complexity O(n, space complexity O(n)
def count_occurrence_recursively(head, key):

  if head is None:
    return 0
  
  result = count_occurrence_recursively(head.next, key)

  if head.value == key:
    result += 1

  return result

# time complexity O(n), space complexity O(1)
def count_occurrence_iteratively(head, key):
  
  count = 0
  
  if head is None:
    return count
  
  temp = head
  while temp is not None:
    if temp.value == key:
      count += 1
    
    temp = temp.next
  
  return count
    

if __name__ == "__main__":
  # head = None
  head = Node(1)
  head.next = Node(2)
  head.next.next = Node(1)
  head.next.next.next = Node(2)
  head.next.next.next.next = Node(3)
  head.next.next.next.next.next = Node(4)
  head.next.next.next.next.next.next = Node(1)

  key = 1
  # print(f"Total occurrences of {key} is {count_occurrence_iteratively(head, key)}")
  print(f"Total occurrences of {key} is {count_occurrence_recursively(head, key)}")