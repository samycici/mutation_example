require './discount.rb'
require 'simplecov'
SimpleCov.start

describe Discount do
  subject(:discount) { Discount.new }
  context "with price I can calculate the discount" do
    it "price is empty" do
      actual = discount.get_discount('')
      expected_result = 'Price can\'t be empty'
      expect(actual).to eq(expected_result)
      end
    it "price is string" do
      actual = discount.get_discount('string')
      expected_result = 'Value not allowed'
      expect(actual).to eq(expected_result)
      end
    it "price is smaller than 0" do
      actual = discount.get_discount(-1)
      expected_result = 'Value not allowed'
      expect(actual).to eq(expected_result)
      end
    it "price is 0" do
      actual = discount.get_discount(0)
      expected_result = 0
      expect(actual).to eq(expected_result)
      end
    it "price is 1" do
      actual = discount.get_discount(1)
      expected_result = 0
      expect(actual).to eq(expected_result)
      end
    it "price is 99" do
      actual = discount.get_discount(99)
      expected_result = 0
      expect(actual).to eq(expected_result)
      end
    it "price is 100" do
      actual = discount.get_discount(100)
      expected_result = 10
      expect(actual).to eq(expected_result)
      end
    it "price is 199" do
      actual = discount.get_discount(199)
      expected_result = 10
      expect(actual).to eq(expected_result)
      end
    it "price is 200" do
      actual = discount.get_discount(200)
      expected_result = 20
      expect(actual).to eq(expected_result)
      end
    it "price is 299" do
      actual = discount.get_discount(299)
      expected_result = 20
      expect(actual).to eq(expected_result)
      end
    it "price is 300" do
      actual = discount.get_discount(300)
      expected_result = 25
      expect(actual).to eq(expected_result)
      end
    it "price is 399" do
      actual = discount.get_discount(399)
      expected_result = 25
      expect(actual).to eq(expected_result)
      end
    it "price is 400" do
      actual = discount.get_discount(400)
      expected_result = 30
      expect(actual).to eq(expected_result)
      end
  end
end
