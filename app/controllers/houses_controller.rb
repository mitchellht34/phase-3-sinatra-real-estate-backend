class HousesController < ApplicationController

    get "/houses" do
        #return json
    end
    
    get "/houses/most-rooms" do
        house = House.most_rooms
        house.to_json
    end

    get "/houses/:id" do
        house = House.find(params[:id])
    end
 
end