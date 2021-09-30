class BeansController < ApplicationController
    def index
        @beans = Bean.all
        render json: @beans
    end

    def create
        binding.pry
    end
    
    def new
    end
end
