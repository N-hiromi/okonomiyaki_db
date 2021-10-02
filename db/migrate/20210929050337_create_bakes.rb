class CreateBakes < ActiveRecord::Migration[6.1]
  def change
    create_table :bakes do |t|
      t.string :name
      t.string :tool
      t.float :cost
      t.text :description
      t.text :warning
      t.float :temp
      t.float :time
      t.integer :user_id
      t.integer :techniqueCategory_id
      t.timestamps
    end
  end
end
