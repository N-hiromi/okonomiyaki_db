class CreateBakes < ActiveRecord::Migration[6.1]
  def change
    create_table :bakes do |t|
      t.string :name
      t.string :tool
      t.integrate :cost
      t.text :description
      t.text :warning
      t.float :temp
      t.float :time

      t.timestamps
    end
  end
end
