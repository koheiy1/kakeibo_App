class CreateVariablecosts < ActiveRecord::Migration[5.2]
  def change
    create_table :variablecosts do |t|
      t.string :name, null: false
      t.string :supplement   
      t.timestamps
    end
  end
end
