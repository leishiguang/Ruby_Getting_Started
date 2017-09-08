require 'minitest/autorun'
require File.dirname(__FILE__) + '/../058.length_of_last_word'
class Test_058 < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  def test_1
    s = "Hello World"
    assert_equal 5, length_of_last_word(s)
  end

  def test_2
    s = "Hello World "
    assert_equal 5, length_of_last_word(s)
  end

  def test_3
    s = "   Hello    World   "
    assert_equal 5, length_of_last_word(s)
  end

end