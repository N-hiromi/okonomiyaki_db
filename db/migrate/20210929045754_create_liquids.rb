class CreateLiquids < ActiveRecord::Migration[6.1]
  def change
    create_table :liquids do |t|
      t.string :name
      t.integrate :cost
      t.text :description
      t.string :warning
      t.float :viscosity
      t.float :density
      t.integrate :materialCategory_id

      t.timestamps
    end
  end
end