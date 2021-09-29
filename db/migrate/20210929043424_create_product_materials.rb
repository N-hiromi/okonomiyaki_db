class CreateProductMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :product_materials do |t|
      t.integrate :product_id
      t.integrate :powder_id
      t.integrate :liquid_id
      t.integrate :seasoning_id
      t.integrate :otherMaterial_id
      t.float :powder_weight
      t.float :liquid_weight
      t.float :seasoning_weight
      t.float :otherMaterial_weight

      t.timestamps
    end
  end
end
