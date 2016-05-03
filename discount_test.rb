require "minitest/autorun"
require File.dirname(__FILE__) + '/discount.rb'
require 'simplecov'
SimpleCov.start

class TestDiscount < Discount::Minitest::Test
  def setup
    @discount = Discount.new
  end

  def test_price_negative
    actual = @discount.get_discount(-1)
    expected_result = 'Value not allowed'
    assert_equal expected_result, actual
  end

  def test_price_equals_0
    actual = @discount.get_discount(0)
    expected_result = 'Value not allowed'
    assert_equal expected_result, actual
  end

  def test_no_discount_with_1_price
    actual = @discount.get_discount(1)
    expected_result = 0
    assert_equal expected_result, actual
  end

  def test_no_discount_with_99_price
    actual = @discount.get_discount(99)
    expected_result = 0
    assert_equal expected_result, actual
  end

  def test_30_discount_with_100_price
    actual = @discount.get_discount(100)
    expected_result = 30
    assert_equal expected_result, actual
  end

  def test_30_discount_with_101_price
    actual = @discount.get_discount(101)
    expected_result = 30
    assert_equal expected_result, actual
  end

  def test_30_discount_with_400_price
    actual = @discount.get_discount(400)
    expected_result = 30
    assert_equal expected_result, actual
  end

end
