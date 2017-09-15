require 'minitest/autorun'
require File.dirname(__FILE__) + '/../../001-100/019.remove_nth_node_from_end_of_list'

class Test_019 < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

    # change NodeList to Array
    def change_list_to_array(head)
      node = head.next
      arr = []
      while node do
        arr.push(node.val)
        node = node.next
      end
      arr
    end
  end

  def test_make_list_node_1
    head = make_list_node(1)
    assert_equal [0], change_list_to_array(head)
  end

  def test_make_list_node_2
    head = make_list_node(3)
    assert_equal [0,1,2], change_list_to_array(head)
  end

  def test_remove_nth_from_end_1
    head = make_list_node(1)
    remove_nth_from_end(head,1)
    assert_equal [],change_list_to_array(head)
  end

  def test_remove_nth_from_end_n_1
    head = make_list_node(3)
    remove_nth_from_end(head,1)
    assert_equal [0,1],change_list_to_array(head)
  end

  def test_remove_nth_from_end_n_2
    head = make_list_node(3)
    remove_nth_from_end(head,2)
    assert_equal [0,2],change_list_to_array(head)
  end

  def test_remove_nth_from_end_n_3
    head = make_list_node(3)
    remove_nth_from_end(head,3)
    assert_equal [1,2],change_list_to_array(head)
  end



  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end