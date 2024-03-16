require "minitest/autorun"
require "./subshop"

class TestSubshop < Minitest::Test
  def test_order_length
    subshop1 = Subshop.new
    subshop1.order.push("Cheese")
    subshop1.order.push("Ham")
    assert_equal 2, subshop1.get_order_length, "Get order length method failed"
  end
  def test_name_on_order
    subshop1 = Subshop.new
    subshop1.name = "Maya Sheriff"
    assert_equal "Maya Sheriff", subshop1.get_name_on_order, "Get name method failed"
  end
end

#type "ruby tests/test_subshop.rb" to run test
