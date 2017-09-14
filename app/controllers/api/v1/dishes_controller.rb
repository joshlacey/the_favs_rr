class Api::V1::DishesController < ApplicationController
  def index
    @dishes = Dish.all
    render json: @dishes, status: 200
  end

    def create
      @dish = Dish.create(dish_params)
      render json: @dish, status: 201
      end

    def show
      @dish = Dish.find_by(id: params[:id])
    end

private
def dish_params
  params.permit(:name, :restaurant_id)
end

end
