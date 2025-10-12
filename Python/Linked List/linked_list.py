
class Node:
  
  def __init__(self, value):
    self.value = value
    self.next = None

class LinkedList:

  def __init__(self, value):
    new_node = Node(value)
    self.head = new_node
    self.tail = new_node
    self.lenght = 1


  # APPEND
  def append(self, value):
    new_node = Node(value)
    if self.lenght == 0:
      self.head = new_node
      self.tail = new_node
    else:
      self.tail.next = new_node
      self.tail = new_node
    self.lenght += 1
      

  # PREPEND
  def prepend(self, value):
    new_node = Node(value)
    if self.lenght == 0:
      self.head = new_node
      self.tail = new_node
    else:
      new_node.next = self.head
      self.head = new_node
    self.lenght += 1


  # REMOVE_LAST
  def remove_last(self):
    if self.lenght == 0:
      return
    
    temp = self.head
    pre = self.head

    while temp.next != None:
      pre = temp
      temp = temp.next
    
    self.tail = pre
    self.tail.next = None # detach the last node.
    self.lenght -= 1

    if self.lenght == 0:
      self.head = None
      self.tail = None

    del temp
    del pre


  # REMOVE_FIRST
  def remove_first(self):
    if self.lenght == 0:
      return
    
    if self.lenght == 1:
      self.head = None
      self.tail = None
    else:
      temp = self.head
      self.head = self.head.next
      del temp

    self.lenght -= 1  


  # GET
  def get_node(self, index):
    if self.lenght == 0 or index >= self.lenght or index < 0:
      return

    if self.lenght == 1:
      return self.head
    else:
      temp = self.head
      for _ in range(index):
        temp = temp.next
      return temp


  # SET

  # INSERT

  # DELETE

  # REVERSE

  # PRINT
  def print_ll(self):
    temp = self.head
    while temp != None:
      print(f"{temp.value}", end=" -> ")
      temp = temp.next
    print("nil")

# INSTANTIATE
linked_list = LinkedList(1)

# APPEND [time complexity: O(1)]
linked_list.append(2)
linked_list.append(3)
linked_list.append(4)
linked_list.append(5)

# PREPEND [time complexity: O(1)]
linked_list.prepend(0)

# REMOVE_LAST [time complexity: O(n)]
linked_list.remove_last()
linked_list.remove_last()

# REMOVE_FIRST [time complexity: O(1)]
linked_list.remove_first()
linked_list.remove_first()

# GET [time complexity: O(n)]
node_value = linked_list.get_node(-1)
node_value = linked_list.get_node(2)
node_value = linked_list.get_node(0)
if node_value != None:
  print(node_value.value)

# SET

# PRINT
linked_list.print_ll()
