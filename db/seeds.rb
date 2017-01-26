require 'faker'

# Categories
Category.create(name: "Appetizers")
Category.create(name: "Salads")
Category.create(name: "Main Dishes")
Category.create(name: "Desserts")

# Users
10.times do
  user_info = {
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password"
  }
  User.create(user_info)
end

# Recipes
75.times do
 recipe_info = {
  title: Faker::Lorem.word,
  category_id: (1..4).to_a.sample,
  user_id: (1..10).to_a.sample,
  time: Faker::Time.between(Time.now - 1, Time.now),
  difficulty: ["easy", "medium", "hard"].sample,
  directions: Faker::Lorem.sentence
 }
 Recipe.create!(recipe_info)
end

# Measures
200.times do
  measures_info = {
  recipe_id: (1..20).to_a.sample,
  ingredient: Faker::Food.ingredient,
  quantity: (1..10).to_a.sample.to_s,
  units: ['Tbs', 'Cup','Pint','tsp', 'Quart', 'Gallon','pound'].sample
  }
  Measure.create(measures_info)
end

# Ratings
75.times do
  rating_info = {
    recipe_id: (1..20).to_a.sample,
    user_id: (1..10).to_a.sample,
    stars: (1..5).to_a.sample
  }

  Rating.create(rating_info)
end

