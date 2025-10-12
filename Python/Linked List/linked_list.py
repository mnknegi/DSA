
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


  # GET_NODE
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


  # SET_NODE
  def set_node(self, value, index):
    new_node = Node(value)
    if index < 0 or index >= self.lenght:
      return
    
    temp = self.get_node(index)
    if temp is not None:
      temp.value = value

  # INSERT
  def insert(self, value, index):
    if index < 0 or index > self.lenght:
      return
    
    if index == 0:
      self.prepend(value)
    elif index == self.lenght:
      self.append(value)
    else:
      new_node = Node(value)
      temp = self.get_node(index - 1)
      new_node.next = temp.next
      temp.next = new_node
      self.lenght += 1


  # DELETE
  def delete(self, index):
    if index < 0 or index >= self.lenght or self.lenght == 0:
      return
    
    if index == 0:
      self.remove_first()
      return
    
    if index == self.lenght - 1:
      self.remove_last()
      return
    
    pre = self.get_node(index - 1)
    temp = self.get_node(index)
    pre.next = temp.next
    self.lenght -= 1
    del temp

  # REVERSE
  def reverse(self):
    if self.lenght == 0 or self.lenght == 1:
      return
    
    before = None
    temp = self.head
    after = self.head.next

    self.head = self.tail
    self.tail = temp

    while temp != None:
      after = temp.next
      temp.next = before
      before = temp
      temp = after


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

# GET_NODE [time complexity: O(n)]
node_value = linked_list.get_node(-1)
node_value = linked_list.get_node(2)
node_value = linked_list.get_node(0)
if node_value != None:
  print(node_value.value)

# SET_NODE [time complexity: O(n)]
linked_list.set_node(value=0, index=0) # before: 2 -> 3 -> nil,  after: 0 -> 3 -> nil
linked_list.set_node(value=1, index=1) # before: 0 -> 3 -> nil,  after: 0 -> 1 -> nil

# INSERT [time complexity: O(n)]
linked_list.insert(3, 2)
linked_list.insert(2, 2)

# DELETE [time complexity: O(n)]
linked_list.delete(0)

# REVERSE
linked_list.reverse()

# PRINT
linked_list.print_ll()
