# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "You're in the seeding file"

# user = User.new(
#   # id: 2,
#   first_name: "Lorenzo",
#   last_name: "Cursley",
#   email: "drumminloz@hotmail.com",
#   password: "123456",
#   password_confirmation: "123456"
# )
# puts "User created"
# user.save!

12.times do |i|
  Item.create!([{
    title: Faker::Lorem.sentence(word_count: 2),
    price: Random.rand(10...10000),
    review_rating: Random.rand(0...5),
    review_count: Random.rand(10...100),
    brand: Faker::DcComics.title,
    product_code: Faker::Lorem.characters(number: 10),
    quantity_available: Random.rand(1...1000),
    description: Faker::Lorem.paragraphs(number: 2),
    image: Rails.root.join("app/assets/images/engine.jpg").open,
    user_id: User.first
  }])
  puts "creating item number #{i + 1}"
end
