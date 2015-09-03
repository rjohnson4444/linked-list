require_relative 'node'

class List < Node
  attr_accessor :head, :tail, :name

  def initialize
    self.head = nil
    self.tail = nil
  end

  def append(node)
    if self.head.nil?
      self.head = node
      self.tail = node
    else
      self.tail.next_node = node
      self.tail = node
    end
  end

  def insert

  end

  def include?(find)
    if self.head.data == find || self.head.next_node.data == find
      true
    elsif self.tail.data == find
      true
    else
      false
    end
  end

  def prepend(node)
    if self.head.nil?
      self.head = node
    else
      node.next_node = self.head
      self.head = node
    end
  end

end



# node1 = Node.new("Ryan")
# node2 = Node.new("Fred")
# node3 = Node.new("Jake")
# list1 = List.new
# node1 = Node.new("Ryan")
# list1.append(node2)
# list1
# list1.append(node3)
# list1
# list1.append(node1)
# list1
# list1.tail
# list1

# list1.include?("Ryan")
