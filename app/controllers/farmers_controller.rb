class FarmersController < ApplicationController

    def index
        farmers = Farmer.all
        render json: FarmerSerializer.new(farmers)
    end

    def create
        @farmer = Farmer.new(farmer_params)

        if @farmer.save
          render json: @farmer, status: :created, location: @farmer
        else
          render json: @farmer.errors, status: :unprocessable_entity
        end
    end
    
    def show 
        farmer = Farmer.find_by(id: params[:id])
        render json: FarmerSerializer.new(farmer)
    end

    def regions
        region = assign_region
        farmers = Farmer.all.select { |r| r.region == region}
        render json: FarmerSerializer.new(farmers)
    end

    def edit
        farmer = Farmer.find_by(id: params[:id])
        render json: FarmerSerializer.new(farmer)
    end

    def destroy
        farmer = Farmer.find_by(id: params[:id])
        farmer.beans.delete_all
        farmer.destroy
        render json: {message: 'Contact successfully deleted'}
    end

    def update
        farmer = Farmer.find_by(id: params[:id])
        farmer.update(farmer_params)
        #render json: FarmerSerializer.new(farmers)
    end


    private

    def set_farmer
        @farmer = Farmer.find(params[:id])
    end

    def farmer_params
        params.require(:farmer).permit(:name, :region, :id)
    end

    def assign_region
        regions = ["Africa", "Asia", "South America", "Central America", "North America"]
        region_id = params[:id].to_i - 1
        regions[region_id]
    end

end