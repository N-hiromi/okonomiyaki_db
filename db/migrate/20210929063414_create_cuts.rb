class CreateCuts < ActiveRecord::Migration[6.1]
  def change
    create_table :cuts do |t|
      t.string :name
      t.string :tool
      t.integrate :cost
      t.text :description
      t.text :warning
      t.float :width
      t.float :height

      t.timestamps
    end
  end
end
