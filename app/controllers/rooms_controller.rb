
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
        room = Room.create(tenant_name: params[:tenant_name] , sq_feet: params[:sq_feet], windows: params[:windows], house_id: params[:house_id])
        room.to_json
    end

    #delete
    delete "/rooms/:id" do
        room = Room.find(params[:id])
        room.destroy
        room.to_json
    end

end