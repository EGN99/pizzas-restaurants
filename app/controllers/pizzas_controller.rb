class PizzasController < ApplicationController

    def index
        pizzas=Pizza.all
        render json: pizzas, except:[:created_at, :updated_at], status: :ok
    end
end
