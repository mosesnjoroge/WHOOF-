# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require "open-uri"

15.times do
  newUser = User.new()
  newUser.email = Faker::Internet.email
  newUser.password = "bruhhhhhhh"
  newUser.address = Faker::Address.street_address
  newUser.save!
  woofer = Dog.new()
  woofer.name = Faker::Name.name
  woofer.breed = Faker::Creature::Dog.breed
  woofer.skills = ["juggling", "skateboarding", "bomb sniffing"]
  woofer.price = rand(20..100)
  woofer.description = "a beatiful little puppy"
  woofer.user_id = newUser.id
  woofer.save!
end
