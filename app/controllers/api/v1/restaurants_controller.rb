class Api::V1::RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
      render json: @restaurants, status: 200
    end

    def create
      @restaurant = Restaurant.create(restaurant_params)
      render json: @restaurant, status: 201
    end

    private
    def restaurant_params
    params.require(:restaurant).permit(:name, :address, :latitude, :longitude)
    end

end
