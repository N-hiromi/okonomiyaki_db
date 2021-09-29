class CreateMaterialContents < ActiveRecord::Migration[6.1]
  def change
    create_table :material_contents do |t|
      t.string :name

      t.timestamps
    end
  end
end
