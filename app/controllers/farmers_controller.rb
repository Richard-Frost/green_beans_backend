class FarmersController < ApplicationController
    def index
        @farmers = Farmer.all
        render json: @farmers
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
        render json: @farmer
    end

    def destroy
        @farmer = Farmer.find_by(id: params[:id])
        @farmer.destroy
        render json: {message: 'Contact successfully deleted'}

    end


    private

    def set_farmer
        @farmer = Farmer.find(params[:id])
      end

    def farmer_params
        params.require(:farmer).permit(:name, :region)
    end


end