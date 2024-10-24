# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create cities
paris = City.create(city_name: "Paris")
lyon = City.create(city_name: "Lyon")

# Create dogsitters
dogsitter1 = Dogsitter.create(name: "Alice", city: paris)
dogsitter2 = Dogsitter.create(name: "Bob", city: lyon)

# Create dogs
dog1 = Dog.create(name: "Fido", city: paris)
dog2 = Dog.create(name: "Rex", city: lyon)

# Create strolls
Stroll.create(dogsitter: dogsitter1, dog: dog1)
Stroll.create(dogsitter: dogsitter2, dog: dog2)