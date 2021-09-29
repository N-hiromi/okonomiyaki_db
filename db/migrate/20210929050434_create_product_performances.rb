class CreateProductPerformances < ActiveRecord::Migration[6.1]
  def change
    create_table :product_performances do |t|
      t.string :product_id
      t.float :smell
      t.float :taste
      t.float :juicy
      t.juicy :app

      t.timestamps
    end
  end
end
