class ProductsOrdersItems < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.big_decimal :price
      t.timestamps
    end

    create_table :orders do |t|
      t.string :status
      t.big_decimal :total_price
      t.integer :user_id
      t.timestamps
    end

    create_table :order_items do |t|
      t.belongs_to :products, index: true
      t.belongs_to :orders, index: true
      t.integer :quantity
      t.timestamps
    end
  end
end
