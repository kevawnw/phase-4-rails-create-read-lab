class PlantsController < ApplicationController
    def index
        render json: Plant.all
    end

    def show
        render json: Plant.find(params[:id])
    end

    def create
        render json: Plant.create(params.permit(:name, :image, :price)), status: :created
    end
end
