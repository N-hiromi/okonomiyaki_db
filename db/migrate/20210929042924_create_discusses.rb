class CreateDiscusses < ActiveRecord::Migration[6.1]
  def change
    create_table :discusses do |t|
      t.string :title
      t.string :text
      t.string :tag

      t.timestamps
    end
  end
end
