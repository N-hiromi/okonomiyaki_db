class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.float :cost
      t.text :description
      t.integer :user_id
      t.integer :smell
      t.integer :taste
      t.integer :juicy
      t.integer :app
      t.integer :bake_id
      t.integer :cut_id
      t.integer :other_technique_id
      t.integer :powder_id
      t.integer :liquid_id
      t.integer :seasoning_id
      t.integer :other_material_id
      t.integer :powder_weight
      t.integer :liquid_weight
      t.integer :seasoning_weight
      t.integer :other_material_weight

      t.timestamps
    end
  end
end
