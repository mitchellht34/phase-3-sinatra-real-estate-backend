class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :tenant_name
      t.integer :sq_feet
      t.integer :windows
      t.integer :house_id #foreign_key
    end
  end
end

#Room
  #sq footage: integer
  #number of windows: integer
  #tenant_name: string
  #room belongs_to house
