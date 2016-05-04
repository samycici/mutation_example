require 'minitest/autorun'
require './discount.rb'
require 'simplecov'
SimpleCov.start

class TestDiscount < Discount::Minitest::Test
  def setup
    @discount = Discount.new
  end

  def test_price_string
    actual = @discount.get_discount('string')
    expected_result = 'Value not allowed'
    assert_equal expected_result, actual
  end

  def test_price_empty
    actual = @discount.get_discount('')
    expected_result = 'Price can\'t be empty'
    assert_equal expected_result, actual
  end

  def test_price_negative
    actual = @discount.get_discount(-1)
    expected_result = 'Value not allowed'
    assert_equal expected_result, actual
  end

  def test_no_discount_with_10_price
    actual = @discount.get_discount(10)
    expected_result = 0
    assert_equal expected_result, actual
  end

  def test_no_discount_with_99_price
    actual = @discount.get_discount(99)
    expected_result = 0
    assert_equal expected_result, actual
  end

  def test_10_discount_with_100_price
    actual = @discount.get_discount(100)
    expected_result = 10
    assert_equal expected_result, actual
  end

  def test_10_discount_with_101_price
    actual = @discount.get_discount(101)
    expected_result = 10
    assert_equal expected_result, actual
  end

  def test_10_discount_with_199_price
    actual = @discount.get_discount(199)
    expected_result = 10
    assert_equal expected_result, actual
  end

  def test_20_discount_with_200_price
    actual = @discount.get_discount(200)
    expected_result = 20
    assert_equal expected_result, actual
  end

  def test_20_discount_with_299_price
    actual = @discount.get_discount(299)
    expected_result = 20
    assert_equal expected_result, actual
  end

  def test_25_discount_with_300_price
    actual = @discount.get_discount(300)
    expected_result = 25
    assert_equal expected_result, actual
  end

  def test_25_discount_with_399_price
    actual = @discount.get_discount(399)
    expected_result = 25
    assert_equal expected_result, actual
  end

  def test_30_discount_with_400_price
    actual = @discount.get_discount(400)
    expected_result = 30
    assert_equal expected_result, actual
  end

  def test_30_discount_with_500_price
    actual = @discount.get_discount(500)
    expected_result = 30
    assert_equal expected_result, actual
  end

end
