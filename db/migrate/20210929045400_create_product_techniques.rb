class CreateProductTechniques < ActiveRecord::Migration[6.1]
  def change
    create_table :product_techniques do |t|
      t.integer :product_id
      t.integer :bake_id
      t.integer :cut_id
      t.integer :otherMethod_id
      t.timestamps
    end
  end
end
