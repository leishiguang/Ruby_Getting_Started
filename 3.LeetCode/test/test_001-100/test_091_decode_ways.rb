require 'minitest/autorun'
require File.dirname(__FILE__) + '/../../001-100/091.decode_ways'

class TEST_091 < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  def test_num_decodings_eq_0
    inputs = %w(0 01 010 abn)
    expect = 0
    inputs.each do |input|
      assert_equal expect, num_decodings(input)
    end
  end

  def test_num_decodings_include_0
    inputs = %w(10 110 101)
    expect = 1
    inputs.each do |input|
      assert_equal expect, num_decodings(input)
    end
  end

  def test_num_decodings_1_to_9
    expect = 1
    (1..9).each do |i|
      input = i.to_s
      assert_equal expect, num_decodings(input)
    end
  end

  def test_num_decodings_10_to_26
    expect = 2
    (10..26).each do |i|
      input = i.to_s
      assert_equal expect, num_decodings(input)
    end
  end

  def test_num_decodings_27_to_99
    expect = 1
    (27..99).each do |i|
      input = i.to_s
      assert_equal expect, num_decodings(input)
    end
  end

  def test_num_decodings_eq_3
    inputs = %w(119 111 113 121 211 222 223 221 126)
    expect = 3
    inputs.each do |input|
      assert_equal expect, num_decodings(input)
    end
  end


  def test_num_decodings_eq_2
    inputs = %w(191 227 127 911 261)
    expect = 2
    inputs.each do |input|
      assert_equal expect, num_decodings(input)
    end
  end

  def test_num_decodings_eq_1
    inputs = %w(271)
    expect = 1
    inputs.each do |input|
      assert_equal expect, num_decodings(input)
    end
  end


  def test_num_decodings_111111
    input = '111111'
    expect = 13
    assert_equal expect, num_decodings(input)
  end

  def test_num_decodings_113111
    input = '113111'
    expect = 9
    assert_equal expect, num_decodings(input)
  end

  def test_num_decodings_bignum
    input = '11312611241872214115411211414'
    expect = 35100
    assert_equal expect, num_decodings(input)
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

end