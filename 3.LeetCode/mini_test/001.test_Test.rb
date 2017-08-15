require 'minitest/autorun'
require File.dirname(__FILE__) + '/../000.Test'


class TestPeople < Minitest::Test
  def setup
    @people = People.new
  end

  def test_name_is_ting
    assert_equal "ting", @people.name
  end

  def test_name_is_ting_2
    assert_equal "ting", @people.name
  end
end