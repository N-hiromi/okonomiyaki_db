class CreateSeasonings < ActiveRecord::Migration[6.1]
  def change
    create_table :seasonings do |t|
      t.string :name
      t.string :tool
      t.float :cost
      t.text :description
      t.text :warning
      t.integer :materialCategory_id
      t.integer :user_id
      t.timestamps
    end
  end
end
