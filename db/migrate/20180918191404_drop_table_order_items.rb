class DropTableOrderItems < ActiveRecord::Migration[5.2]
  def change
    drop_table :orders
  end
end
