class Api::V1::RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
      render json: @restaurants, status: 200
    end

    def create
      @restaurant = Restaurant.create(restaurant_params)
      render json: @restaurant, status: 201
    end

    def destroy
      @restaurant = Restaurant.find_by(id: params[:id])
      @dummy = Restaurant.find_by(id: params[:id])
      @restaurant.destroy
      render json: @dummy, status: 200
    end

    private
    def restaurant_params
    params.require(:restaurant).permit(:name, :address, :latitude, :longitude)
    end

end
