
class RoomsController < ApplicationController

    #read
    get "/rooms" do
        rooms = Room.all
        rooms.to_json
    end
    
    #read
    get "/rooms/:id" do
        room = Room.find(params[:id])
        room.to_json
    end

    #post
    post "/rooms" do
    end

    #delete
    delete "/rooms/:id" do
    end

end