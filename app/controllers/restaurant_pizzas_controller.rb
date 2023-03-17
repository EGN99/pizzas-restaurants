class RestaurantPizzasController < ApplicationController
    
     def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json:restaurant_pizza, status: :accepted
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end
    
end
