class Node
  attr_accessor :data, :next_node, :position

  def initialize(data)
    self.data = data
    self.next_node = nil
  end
end


node = Node.new("Ryan")

node.position
