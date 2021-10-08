class CreateProductMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :product_materials do |t|
      t.integer :product_id
      t.integer :powder_id
      t.integer :liquid_id
      t.integer :seasoning_id
      t.integer :other_material_id
      t.float :powder_weight
      t.float :liquid_weight
      t.float :seasoning_weight
      t.float :other_material_weight

      t.timestamps
    end
  end
end
