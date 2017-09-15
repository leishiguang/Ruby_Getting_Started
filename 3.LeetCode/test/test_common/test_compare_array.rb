require 'minitest/autorun'
require File.dirname(__FILE__) + '/../../common/compare_array'

class Test_compare_array < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end



  def test_arrary_equal_0
    input = []
    output = []
    assert_equal true, is_array_element_equal(input,output)
  end


  def test_arrary_equal_1
    input = [2, 1]
    output = [1, 2]
    assert_equal true, is_array_element_equal(input,output)
  end

  def test_arrary_equal_2
    input = [3, 1]
    output = [1, 2]
    assert_equal false, is_array_element_equal(input,output)
  end

  def test_arrary_equal_3
    input = [1, 3, 2]
    output = [1, 2]
    assert_equal false, is_array_element_equal(input,output)
  end

  def test_arrary_equal_4
    input = [1, 3, 2]
    output = [2, 4, 1]
    assert_equal false, is_array_element_equal(input,output)
  end

  def test_arrary_equal_5
    input = [1, 2, 4, 3, 5, 6]
    output = [6, 5, 4, 2, 3, 1]
    assert_equal true, is_array_element_equal(input,output)
  end

  def test_arrary_equal_6
    input = %w(a b c d e f)
    output = %w(f a b c d e)
    assert_equal true, is_array_element_equal(input,output)
  end

  def test_arrary_equal_7
    input = %w(a b c d e f)
    output = %w(f a b c d p)
    assert_equal false, is_array_element_equal(input,output)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end