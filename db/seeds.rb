puts "seeding data......"

# 5.times do
#     Restaurant.create(
#         name: Faker::Restaurant.name,
#         address: Faker::Address.street_address
#     )
# end

30.times do
    num_ingredients = rand(2..5)
    ingredients = (1..num_ingredients).map { Faker::Food.ingredient }.join(", ")
    Pizza.create(
        name: Faker::Food.dish,
        ingredients: ingredients
    )
end

30.times do
    RestaurantPizza.create(
        price: rand(1...30),
        pizza_id: rand(Pizza.first.id..Pizza.last.id),
        restaurant_id: rand(Restaurant.first.id..Restaurant.last.id)
    )
end

puts "done seeding!"