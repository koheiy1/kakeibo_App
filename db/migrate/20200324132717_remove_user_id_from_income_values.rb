class RemoveUserIdFromIncomeValues < ActiveRecord::Migration[5.2]
  def change
    remove_column :income_values, :user_id, :intege
  end
end
