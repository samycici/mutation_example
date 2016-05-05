require './discount.rb'
require 'simplecov'
SimpleCov.start

describe Discount do
  subject(:discount) { Discount.new }
  context "With the price I can calculate the discount..." do
    it "when price is empty, I get a message 'Price can\'t be empty'" do
      actual = discount.get_discount('')
      expected_result = 'Price can\'t be empty'
      expect(actual).to eq(expected_result)
      end
    it "when price is string, I get a message 'Value not allowed'" do
      actual = discount.get_discount('string')
      expected_result = 'Value not allowed'
      expect(actual).to eq(expected_result)
      end
    it "when price is smaller than 0, I get a message 'Value not allowed'" do
      actual = discount.get_discount(-1)
      expected_result = 'Value not allowed'
      expect(actual).to eq(expected_result)
      end
    it "when price is 0, the discount is 0" do
      actual = discount.get_discount(0)
      expected_result = 0
      expect(actual).to eq(expected_result)
      end
    it "when price is 1, the discount is 0" do
      actual = discount.get_discount(1)
      expected_result = 0
      expect(actual).to eq(expected_result)
      end
    it "when price is 99, the discount is 0" do
      actual = discount.get_discount(99)
      expected_result = 0
      expect(actual).to eq(expected_result)
      end
    it "when price is 100, the discount is 10" do
      actual = discount.get_discount(100)
      expected_result = 10
      expect(actual).to eq(expected_result)
      end
    it "when price is 199, the discount is 10" do
      actual = discount.get_discount(199)
      expected_result = 10
      expect(actual).to eq(expected_result)
      end
    it "when price is 200, the discount is 20" do
      actual = discount.get_discount(200)
      expected_result = 20
      expect(actual).to eq(expected_result)
      end
    it "when price is 299, the discount is 20" do
      actual = discount.get_discount(299)
      expected_result = 20
      expect(actual).to eq(expected_result)
      end
    it "when price is 300, the discount is 25" do
      actual = discount.get_discount(300)
      expected_result = 25
      expect(actual).to eq(expected_result)
      end
    it "when price is 399, the discount is 25" do
      actual = discount.get_discount(399)
      expected_result = 25
      expect(actual).to eq(expected_result)
      end
    it "when price is 400, the discount is 30" do
      actual = discount.get_discount(400)
      expected_result = 30
      expect(actual).to eq(expected_result)
      end
  end
end
