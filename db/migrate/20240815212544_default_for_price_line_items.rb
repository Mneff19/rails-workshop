class DefaultForPriceLineItems < ActiveRecord::Migration[6.1]
  def change
    change_column :line_items, :price, :integer, :default => 1
  end
end
