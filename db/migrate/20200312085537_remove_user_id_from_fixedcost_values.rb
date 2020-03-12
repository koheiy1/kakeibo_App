class RemoveUserIdFromFixedcostValues < ActiveRecord::Migration[5.2]
  def change
    remove_column :fixedcost_values, :user_id, :intege
  end
end
