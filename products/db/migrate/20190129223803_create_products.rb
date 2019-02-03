class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :item_name
      t.string :item_description
      t.string :item_picture
      t.integer :manufacturer_id
      t.timestamps
    end
  end
end
