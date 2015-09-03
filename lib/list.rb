require_relative 'node'  # => true

class List < Node                    # => Node
  attr_accessor :head, :tail, :name  # => nil

  def initialize
    self.head = nil  # => nil
  end                # => :initialize

  def prepend(node)
    if self.head.nil?             # => true, false, false
      self.head = node            # => #<Node:0x007f829c042358 @data="Ryan", @next_node=nil>
    else
      node.next_node = self.head  # => #<Node:0x007f829c042358 @data="Ryan", @next_node=nil>, #<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>
      self.head = node            # => #<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>, #<Node:0x007f829c041cf0 @data="Jake", @next_node=#<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>>
    end                           # => #<Node:0x007f829c042358 @data="Ryan", @next_node=nil>, #<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>, #<Node:0x007f829c041cf0 @data="Jake", @next_node=#<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>>
  end                             # => :prepend
end                               # => :prepend


node1 = Node.new("Ryan")  # => #<Node:0x007f829c042358 @data="Ryan", @next_node=nil>
node2 = Node.new("Fred")  # => #<Node:0x007f829c042010 @data="Fred", @next_node=nil>
node3 = Node.new("Jake")  # => #<Node:0x007f829c041cf0 @data="Jake", @next_node=nil>
list1 = List.new          # => #<List:0x007f829c040ad0 @head=nil>

list1.prepend(node1)  # => #<Node:0x007f829c042358 @data="Ryan", @next_node=nil>
list1                 # => #<List:0x007f829c040ad0 @head=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>
list1.prepend(node2)  # => #<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>
list1                 # => #<List:0x007f829c040ad0 @head=#<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>>
list1.prepend(node3)  # => #<Node:0x007f829c041cf0 @data="Jake", @next_node=#<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>>
list1                 # => #<List:0x007f829c040ad0 @head=#<Node:0x007f829c041cf0 @data="Jake", @next_node=#<Node:0x007f829c042010 @data="Fred", @next_node=#<Node:0x007f829c042358 @data="Ryan", @next_node=nil>>>>
list1.head.data       # => "Jake"


node1.data  # => "Ryan"
