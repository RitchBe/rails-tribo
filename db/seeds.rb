# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Location.destroy_all
User.destroy_all

puts "DESTROY DATABASE"

FEATURES = ["High-speed Wi-Fi", "Coffee and tea", "Friday Beers",
"Printers", "Outlets", "Host","Meeting Rooms",
"Bicycle lodge", "Events", "Whiteboards", "Office Supplies"]

TAGS = ["#Calm & quiet","#Trendy","#Vintage","#Industrial","#Hipster",
"#Designers","#Developers","#Nature",
"#City Centre","#Chill","#Nice Views","#Music","#Social","#Roomy",
"#Inspiring","#Dimly lighted","#Outside area"]

RULES = ["Smoking not allowed","Pets allowed","No questions",
"Instant Booking","Early Dinner Access", "Networking", "Restaurants Disscount"]

ACTIVITY = ["Web developper", "Designer", "Data analysist", "Video editor", "Bussiness Analyst",
"Digital Marketing Specialist"]

 puts 'Creating 15 fake users'

 15.times do
  User.create(
    email: Faker::Internet.email,
    password: "password",
    nick_name: Faker::Twitter.screen_name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    activity: ACTIVITY.sample,
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
    activity: ACTIVITY.sample,
    birth_date: Faker::Date.birthday(18, 65),
    rating: (1..5).to_a.sample
  )
end


  puts "Creating 16 real locations..."

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "The Good The bad and the Ugly",
      email: "info@obomomaueovilao.com",
      address: "R. do Alecrim 21, 1200-014 Lisboa",
      phone: "+351 96 453 1423",
      description: "Situated on the heart of Lisbon trendiest quearter Cais do Sodré, you´ll find here a
      intimate and trendy coworking atmosphere provided with afterwork Live Jazz Jam Sessions, Funky and Indie. Restored house dating from the eighteenth century, located in the heart of Cais do Sodré",
      capacity: 20,
      rate_by_hour: 3,
      rate_by_day: 6,
      rate_by_week: 14,
      features: "High-speed Wi-Fi, Coffee and tea, Outlets,Meeting Rooms",
      tags: "#Vintage, #Hipster, #Music, #Social",
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 18,
    })
    restaurant.photo_urls = [
          'https://media.timeout.com/images/103453500/750/422/image.jpg'
          'https://media.timeout.com/images/103691660/image.jpg'
          'https://pbs.twimg.com/media/DLn_FCwX4AEJzIn.jpg'
        ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "The Insólito Restaurant & Bar",
      email: "insolito@hotmail.com",
      address:"Rua de São Pedro de Alcântara, 83, Bairro Alto, Lisboa 1250-238",
      phone: "+351 21 130 33 06",
      description: "Rooftoop  with outstanding viwes and fast-wifi connection.A meeting place for locals as well as nomad travelers.
      Available to work outdoors during warm seasons",
      capacity: "30",
      rate_by_hour: 5,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(5),
      tags: "#Trendy, #Designers, #Nice Views, #Social",
      rules: "Restaurants Disscount"
      open_hour: 9,
      close_hour: 17,
    })
    restaurant.photo_urls = [
          'https://u.tfstatic.com/restaurant_photos/843/64843/169/612/the-insolito-vista-bb2fe.jpg',
          'http://images-cdn.impresa.pt/bcbm/2016-05-18-22201908611_33a3120640_b.jpg/3x2/mw-1240'
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Diego´s Shanghai Penthouse",
      email: "penthouse@gmail.com",
      address:"R. do Diário de Notícias 142, 1200-146 Lisboa",
      phone: "+351 21 130 33 43",
      description: "Spacious and confortable desks to work with all the supplies of a co-working space plus 3 meeting rooms. At the same time you´ll have the
      opportunity to co-work with one of the best coders of the city",
      capacity: "10",
      rate_by_hour: 4,
      rate_by_day: 11,
      rate_by_week: 35,
      features: FEATURES.sample(4),
      tags: "#Roomy, #Developers #Social",
      rules: RULES.sample(3)
      open_hour: 9,
      close_hour: 21,
    })
    restaurant.photo_urls = [
          'http://retaildesignblog.net/wp-content/uploads/2016/12/WeWork-Yanping-Lu-Coworking-Office-by-Linehouse-Shanghai-China05-1.jpg',
          'https://www.hospitalitydesign.com/wp-content/uploads/Linehouse_Herschel.png'
          'https://i.pinimg.com/originals/cd/40/7a/cd407ad0eb29dd583f86001c2aa61cb6.jpg'
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Ritch Beee in da House",
      email: "ritchbeindahouse@gmail.com",
      address:"R. Rodrigues de Faria 103, 1300 - 501 Lisboa",
      phone: "+351 22 132 44 43",
      description: "Come to work to my place. Two shared big desks plus, sofas, puffs and a meeting room. My place is near Lx Factory. I can give you
      a break dance lessons afterwards"
      capacity: "8",
      rate_by_hour: 4,
      rate_by_day: 11,
      rate_by_week: 35,
      features: FEATURES.sample(4),
      tags: "#Roomy, #Developers #Social",
      rules: RULES.sample(3)
      open_hour: 9,
      close_hour: 21,
    })
    restaurant.photo_urls = [
          'http://craigbaute.com/wp-content/uploads/2014/06/20141010__20141013_C1_FE13SMCOWORKp1.jpg',
          'http://lisboacool.com/sites/default/files/styles/ny_article_horizontal__w720xh480_watermark/public/lisboa_cool_liberdade22903.jpg?itok=Gjuv05CU'
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Casa Independente",
      email: "casaindependente@gmail.com",
      address: "Largo Intendente Pina Manique, 45, Mouraria, Lisboa",
      phone: "218875143",
      description: "Founded in 2012, it was installed in the old mansion of the nº45 of Largo do Intendente where it develops its main project: the Independent House, multidisciplinary space of artistic and cultural character now also
      open for nomads to cowork during the day",
      capacity: "50",
      rate_by_hour: 2,
      rate_by_day: 8,
      rate_by_week: 20,
      features: FEATURES.sample(7),
      tags:  "#Cultural #Calm & Quiet #Rommy",
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
    })
    restaurant.photo_urls = [
          'http://www.agendalx.pt/sites/default/files/evento/casaind.jpg',
          'http://www.insidelisbon.com/wp-content/uploads/2016/11/IL_nightlife_drink_casa-independente.jpg'
          'http://cdn.maxima.pt/images/2017-10/img_974x632$2017_10_10_14_22_33_328688.png'
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Goni Coding Station",
      email: "coding@gmail.com",
      address: "Av. de Roma 50, 1700-348 Lisboa",
      phone: "218875143",
      description: "Full house equipped to cowork in the North area of Lisbon well surrounded by good restaurants, we also handle
      events after 7 in topics related to nomadism",
      capacity: "30",
      rate_by_hour: 3,
      rate_by_day: 10,
      rate_by_week: 40,
      features: FEATURES.sample(7),
      tags:  TAGS.sample(3),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 20,
    })
    restaurant.photo_urls = [
          'https://i.pinimg.com/564x/a9/c5/48/a9c548325bc4ff4c39071877d10a52b7.jpg',
          'https://admin.citiesintransition.eu/wp-content/uploads/2015/01/Liberdade-229-Coworking-in-Lisbon-1.jpg'
          'https://admin.citiesintransition.eu/wp-content/uploads/2015/01/Liberdade-229-Coworking-in-Lisbon.jpg'
      ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Clube Ferroviário",
      email: "clubf@gmail.com",
      address: "Rua de Santa Apolónia, 59, Santa Engrácia, Lisboa",
      phone: "+351 21 225 7683",
      description: "Two floors co-working space with outstanding views over the Tejo. Available outlets and plugs, office supplies and
      fast-wifi all accross the place, you´ll love it",
      capacity: "50",
      rate_by_hour: 3,
      rate_by_day: 10,
      rate_by_week: 40,
      features: FEATURES.sample(7),
      tags: TAGS.sample(3),
      rules: RULES.sample(2),
      open_hour: 10,
      close_hour: 16,
    })
    restaurant.photo_urls = [
          'http://upmagazine-tap.com/app/uploads/2011/06/24hrs4.jpg',
          'http://2.bp.blogspot.com/_2y06NHHK-ys/TKstseCAJUI/AAAAAAAAArA/xRzlDljcbYg/s1600/IMG_3998.jpg'
          'https://media-cdn.tripadvisor.com/media/photo-s/08/b0/75/5e/scenes-from-the-clube.jpg'

      ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Rooftop Bar Mundial",
      email: "hmundial@gmail.com",
      address: "Hotel Mundial, Praça Martim Moniz, 2, Mouraria, Lisboa",
      phone: " +251 218 8 42 00",
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
    })
    restaurant.photo_urls = [
          'https://www.google.pt/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwja3rHEvtrXAhVMbRQKHQQtDsMQjBwIBA&url=https%3A%2F%2Fd1vp8nomjxwyf1.cloudfront.net%2Fwp-content%2Fuploads%2Fsites%2F9%2F2016%2F06%2F23085648%2Fmundial_home_slide_01.jpg&psig=AOvVaw2M2Dvm3sB6AzZj9c65jV46&ust=1511725469969070',
          'http://1.bp.blogspot.com/-7qDYc8HacXk/VZVCBkVL9QI/AAAAAAAACe0/7ogYp19J9g0/s1600/mundial.jpg'
      ]
    restaurant.save


      restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Red Frog",
      email: "redfrog@gmail.com",
      address: "Rua do Salitre 5A, 1250-196 Lisboa",
      phone: "21 5831120",
      description: "Inspired by cocktail bars in New York and London during the dry season",
      capacity: "15",
      rate_by_hour: 2,
      rate_by_day: 12,
      rate_by_week: 30,
      features: FEATURES.sample(2),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 10,
      close_hour: 18,
    })
    restaurant.photo_urls = [
          'http://s3cdn.observador.pt/wp-content/uploads/2015/05/redfrogtp15052015-31.jpg',
          'https://cdn.londonandpartners.com/asset/e9a69784717d5f540e4a77fbe7b0c2e3.jpg',
          'https://www.google.pt/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwibue7jv9rXAhUD7RQKHUbMDl0QjBwIBA&url=https%3A%2F%2Fwww.quintessentially.com%2Fmedia%2F960x0%2F558ab241094c3.jpg&psig=AOvVaw29C-WCB1K6pnt6LsbHQ8lH&ust=1511725780293595',
          'https://www.google.pt/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiWif2Qy9rXAhUCxxQKHVXwD1MQjBwIBA&url=http%3A%2F%2Fthetaste.ie%2Fwp%2Fwp-content%2Fuploads%2F2016%2F04%2FMarks-bar-2.jpg&psig=AOvVaw29C-WCB1K6pnt6LsbHQ8lH&ust=1511725780293595'
]
    restaurant.save

      restaurant = Location.create({
       user_id: User.all.sample.id,
      name: "Double9",
      email: "double9@gmail.com",
      address: "9Hotel Mercy, Rua da Misericórdia, 76, Chiado, Lisboa",
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
    })
    restaurant.photo_urls = [
          'https://www.9-hotel-mercy-lisbon.pt/imgcache/f4dc544d8690c5a5368f30ad0a45f81b_w1138_h488_cp.jpg'
          'https://mb.web.sapo.io/3999df53d6bc1d2307577b264a62f7c51ca4d2f6.jpg'
          'https://d1u4v68pfiv879.cloudfront.net/media/13002/bar-double9_chiado_lisbon-shopping.jpg',
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
    })
    restaurant.photo_urls = [
          'http://static.savoteur.com/uploads/content_image/image/2616/Cave23.jpg',
          'https://u.tfstatic.com/restaurant_photos/337/295337/169/612/cave-23-vista-do-interior-4fffc.jpg'
          'http://lisboa.convida.pt/images/POIs/Terraco23-ConVida2017-010.jpg'
      ]
    restaurant.save


    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Edwards Place",
      email: "eduardo@love.com",
      address: "R. Amorim 2, 1950-022 Lisboa",
      phone: "21 8298071",
      description: "Plenty of space at my place with all the facilities and a gym in the building that you can use if you desire too. Usually designers and people related with
      the luxury start-up industry",
      capacity: "6",
      rate_by_hour: 5,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(4),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
    })
    restaurant.photo_urls = [
      'https://static.wixstatic.com/media/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.webp',
      'https://static.wixstatic.com/media/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.webp',
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Park",
      email: "park@gmail.com",
      address: "Calçada do Combro 58, 1200-109 Lisboa",
      phone: "21 591 4011",
      description: "Hidden in the heart of Lisbon, fully recommended co-working space. Good atmosphere and plenty of space.
      You can not miss this place  with one of the best views of the city ",
      capacity: "6",
      rate_by_hour: 5,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(4),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
    })
    restaurant.photo_urls = [
      'http://4.bp.blogspot.com/-r0rcHrhdWa8/UrawkIduvHI/AAAAAAAAARI/O6HZp5opbnk/s1600/IMG_8265.JPG',
      'https://lifecooler.com/files/registos/imagens/437845/269020.jpg',
      'http://blog.secretplaces.com/wp-content/uploads/2016/07/Park2.jpg'
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Isahias Madrid Lounge",
      email: "Isahias@love.com",
      address: "Calle de O'Donnell, 21 28009 Madrid",
      phone: "91 5773322",
      description: "My place is the best. I have a mansion where you can cowork and network with other nomads. I´m the best one with Mapbox so I can teach Plenty of space at my place with all the facilities and a gym in the building that you can use if you desire too. Usually designers and people related with
      the luxury start-up industry",
      capacity: "6",
      rate_by_hour: 5,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(4),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
    })
    restaurant.photo_urls = [
      'https://static.wixstatic.com/media/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.webp',
      'https://static.wixstatic.com/media/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.webp',
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Edwards Place",
      email: "eduardo@love.com",
      address: "R. Amorim 2, 1950-022 Lisboa",
      phone: "21 8298071",
      description: "Plenty of space at my place with all the facilities and a gym in the building that you can use if you desire too. Usually designers and people related with
      the luxury start-up industry",
      capacity: "6",
      rate_by_hour: 5,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(4),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
    })
    restaurant.photo_urls = [
      'https://static.wixstatic.com/media/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.webp',
      'https://static.wixstatic.com/media/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.webp',
      ]
    restaurant.save

    restaurant = Location.create({
      user_id: User.all.sample.id,
      name: "Edwards Place",
      email: "eduardo@love.com",
      address: "R. Amorim 2, 1950-022 Lisboa",
      phone: "21 8298071",
      description: "Plenty of space at my place with all the facilities and a gym in the building that you can use if you desire too. Usually designers and people related with
      the luxury start-up industry",
      capacity: "6",
      rate_by_hour: 5,
      rate_by_day: 10,
      rate_by_week: 25,
      features: FEATURES.sample(4),
      tags:  TAGS.sample(2),
      rules: RULES.sample(2),
      open_hour: 9,
      close_hour: 17,
    })
    restaurant.photo_urls = [
      'https://static.wixstatic.com/media/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.webp',
      'https://static.wixstatic.com/media/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.webp',
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
