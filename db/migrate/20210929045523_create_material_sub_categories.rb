class CreateMaterialSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :material_sub_categories do |t|
      t.string :name
      t.integrate :materialCategory_id

      t.timestamps
    end
  end
end
