class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :gamerTag
      t.string :first_name
      t.string :last_name
      t.string :avatar
      t.timestamps
    end
  end
end
