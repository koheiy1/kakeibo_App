class AddUserIdToIncomeValues < ActiveRecord::Migration[5.2]
  def change
    add_column :income_values, :user_id, :integer
  end
end
