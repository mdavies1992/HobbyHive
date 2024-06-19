# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


UserHobby.delete_all
Hobby.delete_all
User.delete_all

# Create hobbies
hobby1 = Hobby.create!(name: 'Tennis', description: '...')
hobby2 = Hobby.create!(name: 'Hiking', description: 'Exploring trails and nature.')

# Create a user
user = User.create!(
  username: 'john_doe',
  description: 'Avid tennis player and nature enthusiast',
  latitude: 34.0522,
  longitude: -118.2437,
  location: 'Tokyo',
  email: 'john@example.com',
  password: '123456',
  password_confirmation: '123456'
)

# Associate hobbies with the user
UserHobby.create!(user: user, hobby: hobby1)
UserHobby.create!(user: user, hobby: hobby2)

puts "Database seeded successfully!"
