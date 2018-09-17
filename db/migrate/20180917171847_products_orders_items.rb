class ProductsOrdersItems < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.timestamps
    end

    create_table :orders do |t|
      t.string :status
      t.decimal :total_price, :precision => 8, :scale => 2
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
