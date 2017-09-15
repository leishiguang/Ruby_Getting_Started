require 'minitest/autorun'
require File.dirname(__FILE__) + '/../../001-100/017.letter_combinations_of_a_phone_number'
require File.dirname(__FILE__) + '/../../common/compare_array'

class Test_017 < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

  end
  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def test_letter_combinations_1
    input = '1'
    expected = []
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_2
    input = '2'
    expected = %w(a b c)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_3
    input = '3'
    expected = %w(d e f)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_4
    input = '4'
    expected = %w(g h i)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_5
    input = '5'
    expected = %w(j k l)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_6
    input = '6'
    expected = %w(m n o)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_7
    input = '7'
    expected = %w(p q r s)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_8
    input = '8'
    expected = %w(t u v)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_9
    input = '9'
    expected = %w(w x y z)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_0
    input = '0'
    expected = []
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_12
    input = '12'
    expected = []
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end


  def test_letter_combinations_23
    input = '23'
    expected = %w(ad ae af bd be bf cd ce cf)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end

  def test_letter_combinations_345
    input = '345'
    expected = %w(dgj dgk dgl dhj dhk dhl dij dik dil egj
                  egk egl ehj ehk ehl eij eik eil fgj fgk
                  fgl fhj fhk fhl fij fik fil)
    output = letter_combinations(input)
    assert_equal true,is_array_element_equal(expected,output)
  end


  def teardown
    # Do nothing
  end

end