class CreateProductMaterialCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :product_material_collections do |t|
      t.integer :product_id

      t.timestamps
    end
  end
end
