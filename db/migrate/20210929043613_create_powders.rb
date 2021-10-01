class CreatePowders < ActiveRecord::Migration[6.1]
  def change
    create_table :powders do |t|
      t.string :name
      t.integer :cost
      t.text :description
      t.text :warning
      t.float :particle_size
      t.float :density
      t.float :ssa
      t.timestamps
    end
  end
end
