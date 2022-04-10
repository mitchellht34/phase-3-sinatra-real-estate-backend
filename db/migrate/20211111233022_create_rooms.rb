class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :tenant_name
      t.integer :sq_feet
      t.integer :windows
      t.belongs_to :house #foreign_key
    end
  end
end
