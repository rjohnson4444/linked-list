require 'node'

class NodeTest < Minitest::Test
  def test_has_an_instance
    node = Node.new("Ryan")
    assert_equal Node.new("Ryan"), node
  end

  def test_has_data
    node = Node.new("Ryan")
    assert_equal "Ryan", node.data
  end

  def test_has_a_next_node
    node = Node.new("Ryan")
    assert_equal nil, node.next_node
  end
end
