class CreateOtherMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :other_materials do |t|
      t.string :name
      t.integrate :cost
      t.text :description
      t.text :warning
      t.integrate :materialCategoty_id

      t.timestamps
    end
  end
end
