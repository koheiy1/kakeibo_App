class AddUserIdToVariablecosts < ActiveRecord::Migration[5.2]
  def change
    add_column :variablecosts, :user_id, :integer
  end
end
