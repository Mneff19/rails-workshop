require "test_helper"

class CartTest < ActiveSupport::TestCase
  fixtures :products

  test "cart adds unique products" do
    cart = Cart.create()

    cart.add_product(products(:ruby))
    cart.add_product(products(:one))

    assert_equal cart.line_items.length, 2
  end

  test "cart adds duplicate products" do
    cart = Cart.create()

    cart.add_product(products(:one))
    cart.add_product(products(:one))

    assert_equal cart.line_items.length, 2
  end
end
