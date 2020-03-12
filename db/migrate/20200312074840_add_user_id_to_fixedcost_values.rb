class AddUserIdToFixedcostValues < ActiveRecord::Migration[5.2]
  def change
    add_column :fixedcost_values, :user_id, :integer
  end
end
