class PlantController < ApplicationController
    wrap_parameters format: []

    #controller Action  index, create, show , update destroy 
    def index
        plant = Plant.all 
        render json: plant 
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create
        plant = Plant.create(plant_params)
        # byebug 
        #displaying it in our frontend
        render json: plant, status: :ok 
    end

    #When a user tries to add extra attribute it wont permit 
    private

    def plant_params
        params.permit(:name, :image, :price)
    end
        
end
