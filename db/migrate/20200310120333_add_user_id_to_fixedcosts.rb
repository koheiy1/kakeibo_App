class AddUserIdToFixedcosts < ActiveRecord::Migration[5.2]
  def change
    add_column :fixedcosts, :user_id, :integer
  end
end
