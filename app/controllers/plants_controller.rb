class PlantsController < ApplicationController

  def index
    render json: Plant.all, status: :ok
  end

  def show
    render json: Plant.find(params[:id]), status: :ok
  end

  def create
    render json: Plant.create(plants_params), status: :created
  end

  private
  def plants_params
    params.permit(:name, :image, :price)
  end
end
