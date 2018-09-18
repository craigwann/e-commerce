class AddUserIdForeignKey < ActiveRecord::Migration[5.2]
  def change
    change_table :orders do |t|
        t.belongs_to :users, index: true
    end
  end
end
