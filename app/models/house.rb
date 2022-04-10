class House < ActiveRecord::Base
    has_many :rooms

    def self.most_rooms
        self.preload(:rooms).all.max_by { |house| house.rooms.length}
    end
end