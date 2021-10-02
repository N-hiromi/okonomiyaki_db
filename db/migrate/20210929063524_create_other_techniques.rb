class CreateOtherTechniques < ActiveRecord::Migration[6.1]
  def change
    create_table :other_techniques do |t|
      t.string :name
      t.string :tool
      t.integer :cost
      t.text :description
      t.text :warning
      t.float :time
      t.integer :user_id
      t.integer :techniqueCategory_id
      t.timestamps
    end
  end
end
