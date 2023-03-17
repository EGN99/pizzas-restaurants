class RestaurantPizza < ApplicationRecord

    belongs_to :restaurant
    belongs_to :pizza
    validates :price, inclusion: {in: 1..30}
    
end
