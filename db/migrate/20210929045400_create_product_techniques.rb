class CreateProductTechniques < ActiveRecord::Migration[6.1]
  def change
    create_table :product_techniques do |t|
      t.integrate :product_id
      t.integrate :bake_id
      t.integrate :cut_id
      t.integrate :otherMethod_id

      t.timestamps
    end
  end
end
