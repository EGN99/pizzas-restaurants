class RestaurantsController < ApplicationController
    
    def index
        restaurants = Restaurant.all
        render json: restaurants, except:[:created_at, :updated_at], status: :ok
    end

    def show
        restaurant = find_restaurant
        pizzas = restaurant.pizzas
        render json: restaurant, include: { pizzas: { except: [:created_at, :updated_at] } }, except:[:created_at, :updated_at], status: :ok  
    end

    def destroy
        restaurant = find_restaurant
        pizzas = restaurant.pizzas
        pizzas.destroy
        restaurant.destroy
        render json: {}, status: :no_content
    end

    private

    def find_restaurant
        restaurant = Restaurant.find(params[:id])
    end

end
