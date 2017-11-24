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

FEATURES = ["High-speed Wi-Fi", "Free coffee and tea", "Beer",
 "Printers", "Outlets","Host & Reception","Meeting Rooms",
"Bicycle lodge", "Events","Heating", "AC","Instant Reservation",
"Office supplies", "Whiteboards", "Lunch", "Gym"]

TAGS = ["#Calm & quiet","#Trendy","#Vintage","#Industrial","Hipster",
"#Networking","#Designers","#Developers","#Nature",
"#City Centre","#Chill","#Nice Views","#Music","#Happy hours","#Social","#Roomy",
"#Inspiring","#Dimly lighted","#Outside area"]


RULES = ["Smoking not allowed","Pets allowed","Opening","Closing",
"Full capacity","Early Dinner Access", "Cooking allowed"]

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


  puts "Creating 8 real locations..."

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "O Bom, o Mau e o Vilão",
      email: "bomomau@gmail.com",
      address: "Rua do Alecrim, 21, Cais do Sodré, Lisboa",
      phone: "308 808 340",
      description: "Intimate and trendy atmosphere provided with afterwork Live Jazz Jam Sessions, Funky and Indie. Restored house dating from the eighteenth century, located in the heart of Cais do Sodré",
      capacity: 20,
      rate_by_hour: 3,
      rate_by_day: 6,
      rate_by_week: 12,
      features: FEATURES.sample(7),
      tags:  "Trendy Quiet",
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 18,
      latitude:  38.707362,
      longitude: -9.143454
    })
    restaurant.photo_urls = [
          'https://cdn.betakit.com/wp-content/uploads/2016/08/rndmwrk-web.jpg',
      ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "The Insólito Restaurant & Bar",
      email: "insolito@hotmail.com",
      address:"Rua de São Pedro de Alcântara, 83, Bairro Alto, Lisboa 1250-238",
      phone: "211303306",
      description: "Nice nice views rooftoop with fast-wifi connection. Available to work outdoors during warm seasons",
      capacity: "40",
      rate_by_hour: 4,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(5),
      tags: "Cool views",
      rules: RULES.sample(1),
      open_hour: 9,
      close_hour: 17,
      latitude:  38.714978,
      longitude: -9.144686
    })
    restaurant.photo_urls = [
          'https://s3-eu-west-1.amazonaws.com/hubblehq/hubble/uploads/wyswigy/greenhouse-coworking.jpg',
          'https://cdn-images-1.medium.com/max/2000/0*gHtXCPp2nTe1-18Z.jpg'
      ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Casa Independente",
      email: "casaindependente@gmail.com",
      address: "Largo Intendente Pina Manique, 45, Mouraria, Lisboa",
      phone: "218875143",
      description: "Founded in 2012, it was installed in the old mansion of the nº45 of Largo do Intendente where it develops its main project: the Independent House, multidisciplinary space of artistic and cultural character",
      capacity: "50",
      rate_by_hour: 2,
      rate_by_day: 4,
      rate_by_week: 10,
      features: FEATURES.sample(7),
      tags:  "Cultural atmosphere",
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
      latitude:  38.720856,
      longitude: -9.134657
    })
    restaurant.photo_urls = [
          'https://cdn-images-1.medium.com/max/2000/1*tzK_94Kop8eMfV8R8WRlsg.jpeg',
          'https://thespaces.com/wp-content/uploads/2017/04/London-coworking-spaces-forge-co.jpg'
      ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Clube Ferroviário",
      email: "clubf@gmail.com",
      address: "Rua de Santa Apolónia, 59, Santa Engrácia, Lisboa",
      phone: "21111111",
      description: "Two floors co-working space with outstanding views over the Tejo",
      capacity: "50",
      rate_by_hour: 3,
      rate_by_day: 7,
      rate_by_week: 30,
      features: FEATURES.sample(7),
      tags: TAGS.sample(3),
      rules: RULES.sample(2),
      open_hour: 10,
      close_hour: 16,
            latitude: 38.718354 ,
      longitude: -9.118477
    })
    restaurant.photo_urls = [
          'https://cdn.vox-cdn.com/thumbor/bQtMJLgMqAH3mGG7_ORL2XwKYyU=/0x0:4032x3024/1200x800/filters:focal(829x1330:1473x1974)/cdn.vox-cdn.com/uploads/chorus_image/image/50444117/bon_20nene.0.jpg',
          'http://2.bp.blogspot.com/_2y06NHHK-ys/TKstseCAJUI/AAAAAAAAArA/xRzlDljcbYg/s1600/IMG_3998.jpg'
      ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Rooftop Bar - Hotel Mundial",
      email: "hmundial@gmail.com",
      address: "Hotel Mundial, Praça Martim Moniz, 2, Mouraria, Lisboa",
      phone: "218842000",
      description: "At the last floor of Hotel Mundial we discover one of the Best Rooftoop and coworking spaces in Lisbon where you can admire views over the Tejo while networking",
      capacity: "25",
      rate_by_hour: 4,
      rate_by_day: 10,
      rate_by_week: 50,
      features: FEATURES.sample(7),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 8,
      close_hour: 17,
            latitude: 38.715034  ,
      longitude: -9.137011
    })
    restaurant.photo_urls = [
          'https://cdn.theculturetrip.com/wp-content/uploads/2016/02/lomi.jpg',
          'http://1.bp.blogspot.com/-7qDYc8HacXk/VZVCBkVL9QI/AAAAAAAACe0/7ogYp19J9g0/s1600/mundial.jpg'
      ]
    restaurant.save


      restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Red Frog",
      email: "redfrog@gmail.com",
      address: "Hotel Mundial, Praça Martim Moniz, 2, Mouraria, Lisboa",
      phone: "21 5831120",
      description: "Inspired by cocktail bars in New York and London during the dry season",
      capacity: "20",
      rate_by_hour: 2,
      rate_by_day: 12,
      rate_by_week: 30,
      features: FEATURES.sample(2),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 10,
      close_hour: 18,
            latitude: 38.715035 ,
      longitude: -9.137011
    })
    restaurant.photo_urls = [
          'https://cdn.theculturetrip.com/wp-content/uploads/2016/02/lomi.jpg',
      ]
    restaurant.save

      restaurant = Location.create({
       user_id: User.all.sample.id,
      name: "Double9 - 9Hotel Mercy",
      email: "double9@gmail.com",
      address: "Hotel Mercy, Rua da Misericórdia, 76, Chiado, Lisboa",
      phone: "221 2481480",
      description: "A modern tea house, transformed into a coworking and chillout space, where you can work during the day and sample some cocktails made to order at night",
      capacity: "25",
      rate_by_hour: 4,
      rate_by_day: 12,
      rate_by_week: 35,
      features: FEATURES.sample(4),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
            latitude: 38.712366 ,
      longitude: -9.142971
    })
    restaurant.photo_urls = [
          'https://lefooding.com/media/W1siZiIsIjIwMTUvMDcvMjkvMTBfMTJfMzlfMTY0X3Jlc3RhdXJhbnRfY2FmZV9sb21pX3BhcmlzLmpwZyJdLFsicCIsInRodW1iIiwiNjcyeDYwMCJdXQ/restaurant-cafe-lomi-paris.jpg?sha=78136935',
          'http://genylabs.typepad.com/.a/6a00d8345675df69e201b8d2b6c0cf970c-pi'
      ]
    restaurant.save


      restaurant = Location.create({
       user_id: User.all.sample.id,
      name: "Cave 23",
      email: "cave239@gmail.com",
      address: "Torel Palace, Rua Câmara Pestana, 23, Pena, Lisboa 1150-199",
      phone: "21 8298071",
      description: "With eyes on the city, this space is perfect to get to know another place of the city while working in a classic portuguese restaurant",
      capacity: "30",
      rate_by_hour: 5,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(4),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 16,
            latitude:  38.718040,
      longitude: -9.140064
    })
    restaurant.photo_urls = [
          'https://www.restaurantscanada.org/wp-content/uploads/2017/05/nick-hillier-254650.jpg',
          'https://media.treehugger.com/assets/images/2017/05/coworking-in-restaurants-bars-spacious.jpg.650x0_q70_crop-smart.jpg'
      ]
    restaurant.save


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
