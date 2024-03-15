require "minitest/autorun"
require "./subshop_app"

class TestSubshop < Minitest::Test
  def test_run
    subshop1 = Subshop.new
    assert_equal nil, subshop1.run, "Run method failed"
  end
  def test_order_return
    subshop1 = Subshop.new
    assert_equal ["Ham", "No Cheese", "No Veggies", "Drink: Coke"], subshop1.run, "Run method failed"
  end
end

#type "ruby tests/test_calculator.rb" to run test
