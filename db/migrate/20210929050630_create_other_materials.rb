class CreateOtherMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :other_materials do |t|
      t.string :name
      t.float :cost
      t.text :description
      t.text :warning
      t.integer :materialCategoty_id

      t.timestamps
    end
  end
end
