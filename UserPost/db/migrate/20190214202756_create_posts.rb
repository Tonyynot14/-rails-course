class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :info
      t.integer :user_id
      t.string :picture
      t.timestamps
    end
  end
end
