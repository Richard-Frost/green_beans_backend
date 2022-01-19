class BeansController < ApplicationController
    def index
        beans = Bean.all
        render json: BeanSerializer.new(beans)
    end

    def create
        @bean = Bean.new(bean_params)
        if @bean.save
            render json: @bean
        else
            render json: @bean.errors, status: :unprocessable_entity  
        end
    end

    def new
    end

    def show 
      bean = Bean.find_by(id: params[:id])
      render json: BeanSerializer.new(bean)
    end

    def edit
        bean = Bean.find_by(id: params[:id])
        render json: BeanSerializer.new(bean)
    end

    def update
        bean = Bean.find_by(id: params[:id])
        bean.update(bean_params)
    end
  
    def destroy
        bean = Bean.find_by(id: params[:id])
        bean.destroy
        render json: {message: 'Bean successfully deleted'}
    end
    private

    def bean_params
        params.require(:bean).permit(:name, :description, :farmer_id)
    end

end
