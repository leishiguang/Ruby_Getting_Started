require 'minitest/autorun'
require File.dirname(__FILE__) + '/../../001-100/022.generate_parentheses'
require File.dirname(__FILE__) + '/../../common/compare_array'

class Test_022 < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  def test_generate_parenthesis_nil
    input = nil
    expected = ['']
    output = generate_parenthesis(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_generate_parenthesis_0
    input = 0
    expected = ['']
    output = generate_parenthesis(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_generate_parenthesis_1
    input = 1
    expected = ['()']
    output = generate_parenthesis(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_generate_parenthesis_2
    input = 2
    expected = %w((()) ()())
    output = generate_parenthesis(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_generate_parenthesis_3
    input = 3
    expected = %w(((())) (()()) (())() ()(()) ()()())
    output = generate_parenthesis(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_generate_parenthesis_5
    input = 5
    expected = %w(((((())))) (((()()))) (((())())) (((()))()) (((())))() ((()(())))
                ((()()())) ((()())()) ((()()))() ((())(())) ((())()()) ((())())() ((()))(())
                ((()))()() (()((()))) (()(()())) (()(())()) (()(()))() (()()(())) (()()()())
                (()()())() (()())(()) (()())()() (())((())) (())(()()) (())(())() (())()(())
                (())()()() ()(((()))) ()((()())) ()((())()) ()((()))() ()(()(())) ()(()()())
                ()(()())() ()(())(()) ()(())()() ()()((())) ()()(()()) ()()(())() ()()()(())
                ()()()()())
    output = generate_parenthesis(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end