require 'minitest/autorun'
require File.dirname(__FILE__) + '/../../001-100/053.maximun_subarray'
class Test_053 < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

  end

  def test_1
    assert_equal 6, max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
  end

  def test_2
    assert_equal 1, max_sub_array([1])
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end