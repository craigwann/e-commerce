class FixUsersAssociation < ActiveRecord::Migration[5.2]
  def change
    change_table :orders do |t|
        t.belongs_to :user, index: true
    end
  end
end
