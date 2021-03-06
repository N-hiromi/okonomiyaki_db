class CreateCuts < ActiveRecord::Migration[6.1]
  def change
    create_table :cuts do |t|
      t.string :name
      t.string :tool
      t.float :cost
      t.text :description
      t.text :warning
      t.float :width
      t.float :height
      t.integer :user_id
      t.integer :technique_category_id
      
      t.timestamps
    end
  end
end
