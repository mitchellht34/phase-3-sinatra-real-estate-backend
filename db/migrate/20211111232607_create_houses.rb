class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :address
      t.integer :stories
      t.boolean :garage
    end
  end
end

#House
  #address: string
  #stories: integer
  #garage: boolean
  #has_many rooms
