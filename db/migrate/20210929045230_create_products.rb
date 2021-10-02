class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.float :cost
      t.integer :productTechnique_id
      t.integer :productPerformance_id
      t.integer :measurementCondition_id
      t.integer :productMaterial_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
