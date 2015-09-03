require 'list'

class ListTest < Minitest::Test
  def test_has_a_head
    list = List.new
    assert_equal nil, list.head
  end

  def test_has_a_tail
    list = List.new
    assert_equal nil, list.tail
  end

  def test_can_prepend_node_to_head
    list = List.new
    node1 = Node.new("Ryan")
    list.prepend(node1)
    assert_equal node1, list.head
  end

  def test_can_append_node_to_tail
    list = List.new
    node2 = Node.new("Ryan")
    list.append(node2)
    assert_equal node2, list.tail
  end

  def test_has_an_include?
    list = List.new
    node1 = Node.new("Ryan")
    list.append(node1)
    assert_equal true, list.include?("Ryan")
  end

  def test_has_a_head_value
    skip
    list = List.new
    node = Node.new("Ryan")
    assert_equal "Ryan", list.head_value
  end

  def test_has_a_tail_value
    list = List.new
    node1 = Node.new("Ryan")
    list.append(node1)
    assert_equal "Ryan", list.tail_value
  end
end
