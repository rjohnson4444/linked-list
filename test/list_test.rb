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

  def test_can_count_nodes_in_list
    list1 = List.new
    node1 = Node.new("Ryan")
    list1.append(node1)
    assert_equal 1, list1.count
  end

  def test_can_find_node_by_value
    list1 = List.new
    node1 = Node.new("Ryan")
    assert_equal "Node #{@count} has #{list1.find_by_value}."
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
end
