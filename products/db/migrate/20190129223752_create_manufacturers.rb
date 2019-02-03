class CreateManufacturers < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :manufacturer_type
      t.timestamps
    end
  end
end
