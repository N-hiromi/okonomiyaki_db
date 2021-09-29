class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integrate :price
      t.integrate :cost
      t.integrate :productTechnique_id
      t.integrate :productPerformance_id
      t.integrate :measurementCondition_id
      t.integrate :productMaterial_id
      t.integrate :measuringEquipment_id

      t.timestamps
    end
  end
end
