require_relative 'node'

class List < Node
  attr_accessor :head, :tail, :name, :count
  def initialize
    self.head = nil
    self.tail = nil
    @count = 0
  end

  def head_value
    return self.head.data
  end

  def tail_value
    return self.tail.data
  end

  def count
    @count
  end

  def pop
    return nil if self.tail.nil?
    @count -= 1
    node = self.tail
    self.tail = self.tail.next_node
    return node
  end

  def append(node)
    @count += 1
    if self.head.nil?
      self.head = node
      self.tail = node
    else
      self.tail.next_node = node
      self.tail = node
    end
  end

  def insert(node)
    @count += 1
    if self.head.nil?
      self.head = node
    elsif self.head.next_node == nil
      self.head.next_node = node
    end
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
    @count += 1
    if self.head.nil?
      self.head = node
    else
      node.next_node = self.head
      self.head = node
    end
  end

  def find_by_value(value)
    if @count < 1
      false
    else
      current_node = self.head
      while current_node
        return current_node if value == current_node.data
        current_node = current_node.next_node
      end
      false
    end
  end
end
