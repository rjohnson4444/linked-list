require_relative 'node'  # => true

class List < Node                            # => Node
  attr_accessor :head, :tail, :name, :count  # => nil
  def initialize
    self.head = nil                          # => nil
    self.tail = nil                          # => nil
    @count = 0                               # => 0
  end                                        # => :initialize

  def head_value
    return self.head.data  # => "Fred", "Jake"
  end                      # => :head_value

  def tail_value
    return self.tail.data
  end                      # => :tail_value

  def count
    @count   # => 2, 3
  end        # => :count

  def pop
    return nil if self.tail.nil?
    @count -= 1
    node = self.tail
    self.tail = self.tail.next_node
    return node
  end                                # => :pop

  def append(node)
    @count += 1                   # => 1, 3
    if self.head.nil?             # => true, false
      self.head = node            # => #<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>
      self.tail = node            # => #<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>
    else
      self.tail.next_node = node  # => #<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>
      self.tail = node            # => #<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>
    end                           # => #<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>, #<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>
  end                             # => :append

  def insert(node)
    @count += 1
    if self.head.nil?
      self.head = node
    elsif self.head.next_node == nil
      self.head.next_node = node
    end
  end                                 # => :insert

  def include?(find)
    if self.head.data == find || self.head.next_node.data == find
      true
    elsif self.tail.data == find
      true
    else
      false
    end
  end                                                              # => :include?

  def prepend(node)
    @count += 1                   # => 2
    if self.head.nil?             # => false
      self.head = node
    else
      node.next_node = self.head  # => #<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>
      self.head = node            # => #<Node:0x007fb2a09dc808 @data="Jake", @next_node=#<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>>
    end                           # => #<Node:0x007fb2a09dc808 @data="Jake", @next_node=#<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>>
  end                             # => :prepend

  def find_by_value(value)
    if @count < 1                                          # => false
      false
    else
      current_node = self.head                             # => #<Node:0x007fb2a09dc808 @data="Jake", @next_node=#<Node:0x007fb2a09dca60 @data="Fred", @next_node=#<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>>>
      while current_node                                   # => #<Node:0x007fb2a09dc808 @data="Jake", @next_node=#<Node:0x007fb2a09dca60 @data="Fred", @next_node=#<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>>>
        return current_node if value == current_node.data  # => true
        current_node = current_node.next_node
      end
      false
    end
  end                                                      # => :find_by_value
end                                                        # => :find_by_value



node1 = Node.new("Ryan")  # => #<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>
node2 = Node.new("Fred")  # => #<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>
node3 = Node.new("Jake")  # => #<Node:0x007fb2a09dc808 @data="Jake", @next_node=nil>
list1 = List.new          # => #<List:0x007fb2a09dc5d8 @head=nil, @tail=nil, @count=0>
#
list1.append(node2)       # => #<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>

list1.head_value             # => "Fred"
list1.prepend(node3)         # => #<Node:0x007fb2a09dc808 @data="Jake", @next_node=#<Node:0x007fb2a09dca60 @data="Fred", @next_node=nil>>
list1.head_value             # => "Jake"
list1.count                  # => 2
list1.append(node1)          # => #<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>
list1.count                  # => 3
list1                        # => #<List:0x007fb2a09dc5d8 @head=#<Node:0x007fb2a09dc808 @data="Jake", @next_node=#<Node:0x007fb2a09dca60 @data="Fred", @next_node=#<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>>>, @tail=#<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>, @count=3>
list1.find_by_value("Jake")  # => #<Node:0x007fb2a09dc808 @data="Jake", @next_node=#<Node:0x007fb2a09dca60 @data="Fred", @next_node=#<Node:0x007fb2a09dcce0 @data="Ryan", @next_node=nil>>>

#
# list1
#
# list1.pop
# list1
# list1.pop
#
# list1.insert(node1)
# list1.head_value
# list1.tail_value
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
