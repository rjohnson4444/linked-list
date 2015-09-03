require_relative 'node'  # => true

class List < Node                    # => Node
  attr_accessor :head, :tail, :name  # => nil

  def initialize
    self.head = nil   # => nil
    self.tail = nil   # => nil
  end             # => :initialize

  def prepend(node)
    if self.head.nil?             # => true, false
      self.head = node            # => #<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>
      self.tail = node            # => #<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>
    else
      node.next_node = self.head  # => #<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>
      self.head = node            # => #<Node:0x007fdf98905bd0 @data="Fred", @next_node=#<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>>
    end                       # => #<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>, #<Node:0x007fdf98905bd0 @data="Fred", @next_node=#<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>>
  end                         # => :prepend
end                           # => :prepend


node1 = Node.new("Ryan")  # => #<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>
node2 = Node.new("Fred")  # => #<Node:0x007fdf98905bd0 @data="Fred", @next_node=nil>
list1 = List.new          # => #<List:0x007fdf98905888 @head=nil, @tail=nil>

list1.prepend(node1)  # => #<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>
list1.prepend(node2)  # => #<Node:0x007fdf98905bd0 @data="Fred", @next_node=#<Node:0x007fdf98905e50 @data="Ryan", @next_node=nil>>
list1.data            # => nil
