class RestaurantsController < ApplicationController
    
    def index
        restaurants = Restaurant.all
        render json: restaurants, status: :ok
    end

    def show
        restaurant = find_restaurant
        render json: restaurant, status: :ok
    end

    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        render json: {}, status: :no_content
    end

    private

    def find_restaurant
        restaurant = Restaurant.find(params[:id])
    end

end
