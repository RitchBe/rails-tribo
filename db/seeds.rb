# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "clean database"
Booking.destroy_all
Location.destroy_all
User.destroy_all

ADDRESSES = ["Av. Duque de Ávila 201, 1050-082 Lisboa",
  "Av. dos Cavaleiros 20, 2790-045 Carnaxide",
  "Largo Girassol 26, 2775-417 Carcavelos",
  "Praça dos Pescadores 42, 2825 Costa da Caparica",
  "Tv. São Domingos de Benfica 13, Lisboa",
  "AVENIDA REI HUMBERTO II DE ITÁLIA, LISBOA, BOCA DO INFERNO, 2750-800 Cascais",
  "Av. Rei Humberto II de Italia 7, 2750-800 Cascais",
  "R. Gurué 16, 2775-581 Carcavelos",
  "Quinta da Beloura, Rua Mato da Mina, nº19, 2710-692 Sintra",
  "Alto do Pragal, Av. Cristo Rei, 2800-058 Almada",
  "Praia Das Palmeiras, São João,Costa De Caparica, 2825-426 Almada",
  "R. Parque Infantil 1, 2825-328 Costa da Caparica",
  "Av. de Roma 50, 1700-348 Lisboa",
  "Jardim Zoológico de Lisboa, Estr. de Benfica 1549, 1500-423 Lisboa",
  "Rotunda Nuno Rodrigues dos Santos, 2685-220 Portela",
  "R. Me. Deus 4, 1900-312 Lisboa",
  "R. Amorim 2, 1950-022 Lisboa",
  "Praça Duque da Terceira 24, 1200-014 Lisboa",
  "São Domingos de Benfica 15, Lisboa",
  "AVENIDA REI HUMBERTO II DE ITÁLIA, LISBOA",
  "Av. Rei Humberto II de Italia 20, 2750-800 Cascais",
  "R. Gurué 35, 2775-581 Carcavelos",
  "Rua Mato da Mina 19, 2710-692 Sintra",
  "Alto do Pragal, Almada",
   "Praia Das Palmeiras, Almada",
  "R. Parque Infantil 1, Costa da Caparica",
  "Av. de Roma 55, Lisboa",
  "Estr. de Benfica, Lisboa",
  "Rotunda Nuno Rodrigues dos Santos, Portela",
  "R. Me. Deus 4, Lisboa",
  "R. Amorim 2, Lisboa",
  "Praça Duque da Terceira 24, Lisboa"]

 puts 'Creating 16 fake users'

 16.times do
  User.create(
    email: Faker::Internet.email,
    password: "password",
    nick_name: Faker::Twitter.screen_name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    activity: ["Web developper", "Designer", "Data analysist", "Video editor"].sample,
    birth_date: Faker::Date.birthday(18, 65),
    rating: (1..5).to_a.sample
  )
end

1.times do
  User.create(
    email: "triboteam@gmail.com",
    password: "password",
    nick_name: Faker::Twitter.screen_name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    activity: ["Web developper", "Designer", "Data analysist", "Video editor", "Owner"].sample,
    birth_date: Faker::Date.birthday(18, 65),
    rating: (1..5).to_a.sample
  )
end

  puts "Creating 8 fake locations"

  8.times do
    location = Location.create(
      user_id: User.all.sample.id,
      address: ADDRESSES.sample,
      phone: Faker::PhoneNumber.phone_number,
      description: "This is a locatoin description Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum id facere illo exercitationem vel neque dolores, modi ratione odio placeat eaque, eos quia labore, harum provident. Accusantium fuga, odio enim.",
      capacity: (5..40).to_a.sample,
      rate_by_hour: (3..8).to_a.sample,
      rate_by_day: (15..25).to_a.sample,
      rate_by_week: (90..175).to_a.sample,
      features: "Coffee, Wifi",
      tags: "#calm, #beautiful, #charming",
      rules: "No smoking inside",
      name: Faker::Space.planet
      )

      urls = [
          'https://picsum.photos/200/300/?random',
          'https://picsum.photos/200/300/?random'
          'https://picsum.photos/200/300/?random'
      ]

      product.photo_urls = urls # Multi-upload happens here
      product.save!
end

puts "create 15 fake booking"

15.times do
  booking = Booking.create(
    user_id: User.all.sample.id,
    location_id: Location.all.sample.id,
    begin: Faker::Date.backward(5),
    end: Faker::Date.forward(5),
    status: ["Confirmed", "To be confirmed"],
    owner_feedback: (0..5).to_a.sample,
    worker_feedback: (0..5).to_a.sample,
    worker_review: Faker::ChuckNorris.fact
    )
end
