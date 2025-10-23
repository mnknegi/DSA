
class Node:

  def __init__(self, value):
    self.value = value
    self.prev = None
    self.next = None

class DoublyLinkedList:
  
  # INITIALIZATION
  def __init__(self, value):
    new_node = Node(value)
    self.head = new_node
    self.tail = new_node
    self.length = 1

  # APPEND
  def append(self, value):
    new_node = Node(value)
    if self.length == 0:
      self.head = new_node
      self.tail = new_node
    else:
      self.tail.next = new_node
      new_node.prev = self.tail
      self.tail = new_node
    self.length += 1

  # PREPEND
  def prepend(self, value):
    new_node = Node(value)
    if self.length == 0:
      self.head = new_node
      self.tail = new_node
    else:
      new_node.next = self.head
      self.head.prev = new_node
      self.head = new_node
    self.length += 1

  # REMOVE_LAST
  def remove_last(self): 
    
    if self.length == 0:
      return
    elif self.length == 1:
      self.head = None
      self.tail = None
    else:
      temp = self.tail
      self.tail = self.tail.prev
      self.tail.next = None
      temp = None
    self.length -= 1


  # REMOVE_FIRST
  def remove_first(self):
    
    if self.length == 0:
      return
    elif self.length == 1:
      self.head = None
      self.tail = None
    else:
      temp = self.head
      self.head = self.head.next
      self.head.prev = None
      temp = None
    self.length -= 1

  # GET_NODE
  def get_node(self, index):

    if index < 0 or index >= self.length:
      return None
    
    if index < self.length / 2:
      temp = self.head
      for _ in range(index):
        temp = temp.next
    else:
      temp = self.tail
      for _ in range(self.length - 1, index, -1):
        temp = temp.prev

    return temp
  
  
  # SET_NODE
  def set_node(self, value, index):
    
    if index < 0 or index >= self.length:
      return
    
    temp = self.head
    for _ in range(index):
      temp = temp.next
      
    temp.value = value
    return self.head

  # INSERT
  def insert(self, value, index):
    pass

  # DELETE
  def delete(self, value, index):
    pass

  # PRINT
  def print_doubly_linked_list(self):
    print()
    temp = self.head
    while temp is not None:
      print(temp.value, end=" <--> ")
      temp = temp.next
    print("nil")


if __name__ == "__main__":
  
  # INITIALIZATION
  doubly_linked_list = DoublyLinkedList(0)

  # APPEND
  doubly_linked_list.append(1)
  doubly_linked_list.append(2)
  doubly_linked_list.append(3)

  # PREPEND
  doubly_linked_list.prepend(-1)
  doubly_linked_list.prepend(-2)
  doubly_linked_list.prepend(-3)

  # REMOVE_LAST
  doubly_linked_list.remove_last()
  doubly_linked_list.remove_last()

  # REMOVE_FIRST
  doubly_linked_list.remove_first()
  doubly_linked_list.remove_first()
  doubly_linked_list.remove_first()

  # GET_NODE
  doubly_linked_list.append(2)
  doubly_linked_list.append(3)
  print(f"node value: {doubly_linked_list.get_node(3).value}")

  # SET_NODE
  doubly_linked_list.remove_first()
  doubly_linked_list.remove_first()
  doubly_linked_list.remove_first()
  doubly_linked_list.remove_first()
  doubly_linked_list.append(0)
  doubly_linked_list.append(2)
  doubly_linked_list.append(2)
  doubly_linked_list.set_node(1, 1)

  # PRINT
  doubly_linked_list.print_doubly_linked_list()