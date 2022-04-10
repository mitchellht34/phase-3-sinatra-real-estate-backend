
class RoomsController < ApplicationController

    #read
    get "/rooms" do
        rooms = Room.all
        rooms.to_json
    end
    
    #read
    get "/rooms/:id" do
        room = Room.find_by(id: params[:id])
        if room
            room.to_json
        else
            {error: "Room does not exist"}.to_json
        end
    end

    #post
    post "/rooms" do
        room = Room.create(tenant_name: params[:tenant_name] , sq_feet: params[:sq_feet], windows: params[:windows], house_id: params[:house_id])
        if room.id
            room.to_json
        else
            {error: room.errors.full_messages.to_sentence}.to_json
        end
    end

    #delete
    delete "/rooms/:id" do
        room = Room.find_by(id: params[:id])
        if room
            room.destroy
            "Successfully destroyed Room"
        else
            {error: "Room does not exist"}.to_json
        end
    end

end