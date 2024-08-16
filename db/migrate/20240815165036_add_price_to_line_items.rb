class AddPriceToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_column :line_items, :price, :integer, default: 1

    LineItem.all.each do |line_item|
      # count the number of each product in the cart
      line_item.price = line_item.product.price
      line_item.save!
    end
  end
end
