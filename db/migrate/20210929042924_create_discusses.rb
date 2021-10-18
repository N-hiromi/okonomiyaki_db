class CreateDiscusses < ActiveRecord::Migration[6.1]
  def change
    create_table :discusses do |t|
      t.string :title
      t.string :text
      t.string :tag
      t.integer :user_from_id
      t.integer :user_to_id
      
      t.timestamps
    end
  end
end
