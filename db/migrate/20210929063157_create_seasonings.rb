class CreateSeasonings < ActiveRecord::Migration[6.1]
  def change
    create_table :seasonings do |t|
      t.string :name
      t.string :tool
      t.integrate :cost
      t.text :description
      t.text :warning
      t.integrate :materialCategory_id

      t.timestamps
    end
  end
end
