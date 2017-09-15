require 'minitest/autorun'
require File.dirname(__FILE__) + '/../../001-100/066.plus_one'

class Test_066 < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
  end


  def test_1
    arr = [0]
    assert_equal [1], plus_one(arr)
  end

  def test_2
    arr = [1,2]
    assert_equal [1,3], plus_one(arr)
  end

  def test_3
    arr = [1,9,2]
    assert_equal [1,9,3], plus_one(arr)
  end

  def test_4
    arr = [1,2,9]
    assert_equal [1,3,0], plus_one(arr)
  end

  def test_5
    arr = [1,9,9]
    assert_equal [2,0,0], plus_one(arr)
  end

  def test_6
    arr = [9]
    assert_equal [1,0], plus_one(arr)
  end
  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end