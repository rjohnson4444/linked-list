require 'list'  # ~> LoadError: cannot load such file -- list

class ListTest < Minitest::Test
  def test_is_initialized
    skip
    list = List.new()
    assert_equal
  end
end

# ~> LoadError
# ~> cannot load such file -- list
# ~>
# ~> /Users/ryanjohnson/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/ryanjohnson/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/ryanjohnson/code/linked-list/test/list_test.rb:1:in `<main>'
