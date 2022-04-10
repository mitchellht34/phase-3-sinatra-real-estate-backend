class Room < ActiveRecord::Base
    belongs_to :house
    validates :tenant_name, :sq_feet, :windows, :house_id, presence: true
end