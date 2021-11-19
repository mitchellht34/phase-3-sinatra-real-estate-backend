class HousesController < ApplicationController

    get "/houses" do
        #return json
    end

    get "/houses/:id" do
        house = House.find(params[:id])
    end
 
end