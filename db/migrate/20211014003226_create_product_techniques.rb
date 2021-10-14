class CreateProductTechniques < ActiveRecord::Migration[6.1]
  def change
    create_table :product_techniques do |t|
      t.integer :cut_id
      t.integer :bake_id
      t.integer :other_technique_id
      t.integer :product_id

      t.timestamps
    end
  end
end
