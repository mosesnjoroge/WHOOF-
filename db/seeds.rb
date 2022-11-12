# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require "open-uri"

Booking.delete_all
Dog.delete_all
User.delete_all


newUser = User.new()
newUser.email = Faker::Internet.email
newUser.password = "bruhhhhhhh"
newUser.address = "2763  Duke Street"
newUser.save!
woofer = Dog.new()
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/7f/Bouvier.JPG")
woofer.name = Faker::Name.name
woofer.breed = "Bouvier"
woofer.photo.attach(io: file, filename: "woofer.png", content_type: "image/png")
woofer.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer.price = rand(20..100)
woofer.description = "a beatiful little puppy"
woofer.user_id = newUser.id
woofer.save!


newUser1 = User.new()
newUser1.email = Faker::Internet.email
newUser1.password = "bruhhhhhhh"
newUser1.address = "5333 Av. Casgrain"
newUser1.save!

file1 = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/5d/Italian_Greyhound_standing_gray_%28cropped%29.jpg")
woofer1 = Dog.new()
woofer1.name = Faker::Name.name
woofer1.breed = "Italian Greyhound"
woofer1.photo.attach(io: file1, filename: "woofer1.png", content_type: "image/png")
woofer1.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer1.price = rand(20..100)
woofer1.description = "a beatiful little puppy"
woofer1.user_id = newUser1.id
woofer1.save!

newUser2 = User.new()
newUser2.email = Faker::Internet.email
newUser2.password = "bruhhhhhhh"
newUser2.address = "1703  rue Levy"
newUser2.save!

file2 = URI.open("https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/26151212/Afghan-Hound-standing-in-a-garden.jpg")
woofer2 = Dog.new()
woofer2.name = Faker::Name.name
woofer2.breed = "Afghan Hound"
woofer2.photo.attach(io: file2, filename: "woofer2.png", content_type: "image/png")
woofer2.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer2.price = rand(20..100)
woofer2.description = "a beatiful little puppy"
woofer2.user_id = newUser2.id
woofer2.save!

newUser3 = User.new()
newUser3.email = Faker::Internet.email
newUser3.password = "bruhhhhhhh"
newUser3.address = "1411  Scarth Street"
newUser3.save!

file3 = URI.open("https://upload.wikimedia.org/wikipedia/en/5/5b/Deerhound_Fernhill%27s_Kendra.jpg")
woofer3 = Dog.new()
woofer3.name = Faker::Name.name
woofer3.breed = "Scottish Deerhound"
woofer3.photo.attach(io: file3, filename: "woofer3.png", content_type: "image/png")
woofer3.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer3.price = rand(20..100)
woofer3.description = "a beatiful little puppy"
woofer3.user_id = newUser3.id
woofer3.save!


newUser4 = User.new()
newUser4.email = Faker::Internet.email
newUser4.password = "bruhhhhhhh"
newUser4.address = "3358  chemin Hudson"
newUser4.save!

file4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/75/Terier_irlandzki_g%C5%82owa_pl.jpg")
woofer4 = Dog.new()
woofer4.name = Faker::Name.name
woofer4.breed = "Irish Terrier"
woofer4.photo.attach(io: file4, filename: "woofer4.png", content_type: "image/png")
woofer4.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer4.price = rand(20..100)
woofer4.description = "a beatiful little puppy"
woofer4.user_id = newUser4.id
woofer4.save!


newUser5 = User.new()
newUser5.email = Faker::Internet.email
newUser5.password = "bruhhhhhhh"
newUser5.address = "3412  Islington Ave"
newUser5.save!

file5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/a/a2/Shetland_Sheepdog_600.jpg")
woofer5 = Dog.new()
woofer5.name = Faker::Name.name
woofer5.breed = "Shetland Sheepdog"
woofer5.photo.attach(io: file5, filename: "woofer5.png", content_type: "image/png")
woofer5.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer5.price = rand(20..100)
woofer5.description = "a beatiful little puppy"
woofer5.user_id = newUser5.id
woofer5.save!

newUser6 = User.new()
newUser6.email = Faker::Internet.email
newUser6.password = "bruhhhhhhh"
newUser6.address = "4971 rue Saint-Charles"
newUser6.save!

file6 = URI.open("https://www.akc.org/wp-content/uploads/2017/11/Giant-Schanuzer-standing-in-a-field.jpg")
woofer6 = Dog.new()
woofer6.name = Faker::Name.name
woofer6.breed = "Giant Schnauzer"
woofer6.photo.attach(io: file6, filename: "woofer6.png", content_type: "image/png")
woofer6.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer6.price = rand(20..100)
woofer6.description = "a beatiful little puppy"
woofer6.user_id = newUser6.id
woofer6.save!

newUser7 = User.new()
newUser7.email = Faker::Internet.email
newUser7.password = "bruhhhhhhh"
newUser7.address = "3160  Derry Rd"
newUser7.save!

file7 = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f7/RileyPapillon.JPG")
woofer7 = Dog.new()
woofer7.name = Faker::Name.name
woofer7.breed = "Papillon"
woofer7.photo.attach(io: file7, filename: "woofer7.png", content_type: "image/png")
woofer7.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer7.price = rand(20..100)
woofer7.description = "a beatiful little puppy"
woofer7.user_id = newUser7.id
woofer7.save!

newUser8 = User.new()
newUser8.email = Faker::Internet.email
newUser8.password = "bruhhhhhhh"
newUser8.address = "2773  rue Boulay"
newUser8.save!

file8 = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4c/ChowChow2Szczecin.jpg")
woofer8 = Dog.new()
woofer8.name = Faker::Name.name
woofer8.breed = "Chow"
woofer8.photo.attach(io: file8, filename: "woofer8.png", content_type: "image/png")
woofer8.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer8.price = rand(20..100)
woofer8.description = "a beatiful little puppy"
woofer8.user_id = newUser8.id
woofer8.save!

newUser9 = User.new()
newUser9.email = Faker::Internet.email
newUser9.password = "bruhhhhhhh"
newUser9.address = "4267  rue Garneau"
newUser9.save!

file9 = URI.open("https://upload.wikimedia.org/wikipedia/commons/7/75/Hilu_the_Australian_Kelpie_dog.jpg")
woofer9 = Dog.new()
woofer9.name = Faker::Name.name
woofer9.breed = "Kelpie"
woofer9.photo.attach(io: file9, filename: "woofer9.png", content_type: "image/png")
woofer9.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer9.price = rand(20..100)
woofer9.description = "a beatiful little puppy"
woofer9.user_id = newUser9.id
woofer9.save!

newUser10 = User.new()
newUser10.email = Faker::Internet.email
newUser10.password = "bruhhhhhhh"
newUser10.address = "3914 Pitfield Blvd"
newUser10.save!

file10 = URI.open("https://upload.wikimedia.org/wikipedia/commons/c/ca/Pomeranian.JPG")
woofer10 = Dog.new()
woofer10.name = Faker::Name.name
woofer10.breed = "Pomeranian"
woofer10.photo.attach(io: file10, filename: "woofer10.png", content_type: "image/png")
woofer10.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer10.price = rand(20..100)
woofer10.description = "a beatiful little puppy"
woofer10.user_id = newUser10.id
woofer10.save!


newUser11 = User.new()
newUser11.email = Faker::Internet.email
newUser11.password = "bruhhhhhhh"
newUser11.address = "4661  avenue de Port-Royal"
newUser11.save!

file11 = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4c/Chihuahua1_bvdb.jpg")
woofer11 = Dog.new()
woofer11.name = Faker::Name.name
woofer11.breed = "Chihuahua"
woofer11.photo.attach(io: file11, filename: "woofer11.png", content_type: "image/png")
woofer11.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer11.price = rand(20..100)
woofer11.description = "a beatiful little puppy"
woofer11.user_id = newUser11.id
woofer11.save!

newUser12 = User.new()
newUser12.email = Faker::Internet.email
newUser12.password = "bruhhhhhhh"
newUser12.address = "4361  avenue de Port-Royal"
newUser12.save!

file12 = URI.open("https://upload.wikimedia.org/wikipedia/commons/6/6f/Male_fawn_Boxer_undocked.jpg")
woofer12 = Dog.new()
woofer12.name = Faker::Name.name
woofer12.breed = "Boxer"
woofer12.photo.attach(io: file12, filename: "woofer12.png", content_type: "image/png")
woofer12.skills = ["juggling", "skateboarding", "bomb sniffing"]
woofer12.price = rand(20..100)
woofer12.description = "a beatiful little puppy"
woofer12.user_id = newUser12.id
woofer10.save!
