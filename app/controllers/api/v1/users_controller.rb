class Api::V1::UsersController < ApplicationController

    def index
      @users = User.all
      render json: @users, status: 200
    end

    def create
      @user = User.create(user_params)
      restaurants = params["restaurants"]
      restaurants.each {|rest| @user.restaurants << Restaurant.find_by(id: rest[:restId])}
      render json: @user, status: 201
    end

    def show
      @user = User.find(params[:id])
      render json: @user, status: 200
    end

    def update
      @user = User.find(params[:id])
      restaurants = params["restaurants"]
      restaurants.map {|rest| Restaurant.find_by(id: rest[:restId])}
      @user.update(restaurants: restaurants)
      render json @user, status: 200
    end

    private
    def user_params
      params.permit(:body)
    end

end
