class CreateUserPostIds < ActiveRecord::Migration[6.1]
  def change
    create_table :user_post_ids do |t|
      t.integrate :user_to_id
      t.integrate :user_from_id
      t.integrate :post_id

      t.timestamps
    end
  end
end
