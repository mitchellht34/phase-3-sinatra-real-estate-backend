class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :stories #floors
      t.boolean :garage
    end
  end
end
