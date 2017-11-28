# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Message.destroy_all
Conversation.destroy_all
Booking.destroy_all
Location.destroy_all
User.destroy_all

puts "DESTROY DATABASE!!!"

FEATURES = ["High-speed Wi-Fi", "Coffee&Tea", "Friday Beers", "Printers", "Outlets", "Host", "Meeting Rooms","Bicycle Parking",
"Events", "Whiteboards", "Office Supplies"]

TAGS = ["#Zen", "#Trendy", "#Vintage", "#Industrial", "#Hipster", "#Design", "#Code", "#Marketing", "#City Centre", "#Chill",
  "#Nice Views", "#Music", "#Social", "#Roomy", "#Inspiring", "#Dimly lighted", "#Outside area"]

RULES = ["Smoking not allowed", "Pets allowed","No ??", "Early Dinner Access", "Networking",
"Restaurant Discount"]

ACTIVITY = ["Web developper", "Designer", "Data analysist", "Video editor", "Bussiness Analyst", "Digital Marketing Specialist"]


puts 'Creating 15 fake users'

15.times do
  User.create(
    email: Faker::Internet.email,
    password: "password",
    nick_name: Faker::Twitter.screen_name,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    activity: ACTIVITY.sample,
    birth_date: Faker::Date.birthday(18, 50),
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
    birth_date: Faker::Date.birthday(18, 50),
    rating: (1..5).to_a.sample
    )
end


puts "Creating 17 real locations..."

location = Location.create({
  user_id: User.all.sample.id,
  name: "The Good The bad and the Ugly",
  email: "info@obomomaueovilao.com",
  address: "R. do Alecrim 21, 1200-014 Lisboa",
  phone: "+351 96 453 1423",
  description: "Situated on the heart of Lisbon trendiest quarter Cais do Sodré, you´ll find here a restored house
  dating from the eighteenth century. Intimate and trendy coworking atmosphere provided with afterwork Live Jazz
  Jam Sessions, Funky and Indie.",
  capacity: 15,
  rate_by_hour: 3,
  rate_by_day: 7,
  rate_by_week: 14,
  features: "High-speed Wi-Fi, Coffee and tea, Outlets, Meeting Rooms",
  tags: "#Vintage, #Hipster, #Music, #Social",
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 18,
  latitude:  38.707362,
  longitude: -9.143454
  })
location.photo_urls = [
  'http://lookmag.pt/wp-content/uploads/2017/02/TOPO-Clube1.jpg',
  'http://www.evenues.com/GetImage.ashx?PhotoId=19991'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "The Insólito",
  email: "insolito@hotmail.com",
  address:"Rua de São Pedro de Alcântara, 83, Bairro Alto, Lisboa 1250-238",
  phone: "+351 21 130 33 06",
  description: "Rooftoop with outstanding views and ultra fast-wifi connection.A meeting place for locals as well as nomad travelers.
  Available to work outdoors during warm seasons",
  capacity: 25,
  rate_by_hour: 5,
  rate_by_day: 10,
  rate_by_week: 25,
  features: FEATURES.sample(5),
  tags: "#Trendy, #Designers, #Nice Views, #Social",
  rules: "Restaurant Disscount",
  open_hour: 9,
  close_hour: 17,
  latitude:  38.714978,
  longitude: -9.144686
  })
location.photo_urls = [
  'http://images-cdn.impresa.pt/bcbm/2016-05-18-22201908611_33a3120640_b.jpg/3x2/mw-1240',
  'http://upmagazine-tap.com/app/uploads/2014/03/homelisbon.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Shanghai Penthouse",
  email: "penthouse@gmail.com",
  address:"Paseo de la Castellana, 2, 28046 Madrid, España",
  phone: "+351 21 130 33 43",
  description: "Spacious and confortable desks to work with all the supplies of a co-working space plus 3 meeting rooms. At the same time you´ll have the
  opportunity to co-work with one of the best coder community of the city",
  capacity: 10,
  rate_by_hour: 4,
  rate_by_day: 11,
  rate_by_week: 35,
  features: FEATURES.sample(4),
  tags: "#Roomy, #Developers #Social",
  rules: RULES.sample(3),
  open_hour: 9,
  close_hour: 21,
  latitude:  40.426306,
  longitude: -3.689672

  })
location.photo_urls = [
  'http://retaildesignblog.net/wp-content/uploads/2016/12/WeWork-Yanping-Lu-Coworking-Office-by-Linehouse-Shanghai-China05-1.jpg',
  'https://www.hospitalitydesign.com/wp-content/uploads/Linehouse_Herschel.png',
  'https://i.pinimg.com/originals/cd/40/7a/cd407ad0eb29dd583f86001c2aa61cb6.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Ritch Beee in da House",
  email: "ritchbeindahouse@gmail.com",
  address:"R. Rodrigues de Faria 103, 1300 - 501 Lisboa",
  phone: "+351 22 132 44 43",
  description: "Come to work to my place. Two shared big desks, sofas, puffs and a meeting room. My place is near Lx Factory. I can give you
  a break dance lesson afterwards",
  capacity: 8,
  rate_by_hour: 4,
  rate_by_day: 11,
  rate_by_week: 35,
  features: FEATURES.sample(4),
  tags: TAGS.sample(3),
  rules: RULES.sample(3),
  open_hour: 9,
  close_hour: 21,
  latitude:  38.703522,
  longitude: -9.178843
  })
location.photo_urls = [
  'http://craigbaute.com/wp-content/uploads/2014/06/20141010__20141013_C1_FE13SMCOWORKp1.jpg',
  'http://lisboacool.com/sites/default/files/styles/ny_article_horizontal__w720xh480_watermark/public/lisboa_cool_liberdade22903.jpg?itok=Gjuv05CU',
  'http://cdn.maxima.pt/images/2017-10/img_974x632$2017_10_10_14_22_33_328688.png'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Casa Independente",
  email: "casaindependente@gmail.com",
  address: "Largo Intendente Pina Manique, 45, Mouraria, Lisboa",
  phone: "218875143",
  description: "Founded in 2012, it was installed in the old mansion of the nº45 of Largo do Intendente where it develops its main project: the Independent House, multidisciplinary space of artistic and cultural character now also
  open for nomads to cowork during the day",
  capacity: 50,
  rate_by_hour: 2,
  rate_by_day: 8,
  rate_by_week: 20,
  features: FEATURES.sample(7),
  tags:  "#Cultural #Calm & Quiet #Rommy",
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 17,
  latitude:  38.720856,
  longitude: -9.134657,

  })
location.photo_urls = [
  'http://www.agendalx.pt/sites/default/files/evento/casaind.jpg',
  'http://www.insidelisbon.com/wp-content/uploads/2016/11/IL_nightlife_drink_casa-independente.jpg',
  'http://cdn.maxima.pt/images/2017-10/img_974x632$2017_10_10_14_22_33_328688.png',
  'https://cdn.betakit.com/wp-content/uploads/2016/08/rndmwrk-web.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "GCoding Station",
  email: "coding@gmail.com",
  address: "Av. de Roma 50, 1700-348 Lisboa",
  phone: "218875143",
  description: "Full house equipped to cowork in the North area of Lisbon well surrounded by good restaurants, we also handle
  events after 7",
  capacity: 30,
  rate_by_hour: 3,
  rate_by_day: 10,
  rate_by_week: 40,
  features: FEATURES.sample(7),
  tags:  TAGS.sample(3),
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 20,
  latitude:  38.747793,
  longitude: -9.140863,
  })
location.photo_urls = [
  'https://i.pinimg.com/564x/a9/c5/48/a9c548325bc4ff4c39071877d10a52b7.jpg',
  'https://admin.citiesintransition.eu/wp-content/uploads/2015/01/Liberdade-229-Coworking-in-Lisbon-1.jpg',
  'https://admin.citiesintransition.eu/wp-content/uploads/2015/01/Liberdade-229-Coworking-in-Lisbon.jpg',
  'http://barcelonanavigator.i5me33nlgv.maxcdn-edge.com/wp-content/uploads/2015/05/Felisa-Coworking-Barcelona.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Clube Ferroviário",
  email: "clubf@gmail.com",
  address: "Rua de Santa Apolónia, 59, Santa Engrácia, Lisboa",
  phone: "+351 21 225 7683",
  description: "Two floors co-working space with outstanding views over the Tejo. Available outlets and plugs, office supplies and
  fast-wifi all accross the place, you´ll love it",
  capacity: 50,
  rate_by_hour: 3,
  rate_by_day: 10,
  rate_by_week: 40,
  features: FEATURES.sample(7),
  tags: TAGS.sample(3),
  rules: RULES.sample(2),
  open_hour: 10,
  close_hour: 16,
  latitude: 38.718354,
  longitude: -9.118477,

  })
location.photo_urls = [
  'http://upmagazine-tap.com/app/uploads/2011/06/24hrs4.jpg',
  'https://www.wedemain.fr/photo/art/default/5788848-8629890.jpg?v=1378821161',
  'https://media-cdn.tripadvisor.com/media/photo-s/08/b0/75/5e/scenes-from-the-clube.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Shubaduba",
  email: "ashubaduba@gmail.com",
  address: "Praça Duque da Terceira 24, 1200-014 Lisboa",
  phone: " +251 218 8 42 00",
  description: "At the last floor of my place  we discover one of the friendlier places in Lisbon to work and get inspired",
  capacity: 25,
  rate_by_hour: 4,
  rate_by_day: 10,
  rate_by_week: 50,
  features: FEATURES.sample(7),
  tags:  TAGS.sample(2),
  rules: RULES.sample(2),
  open_hour: 8,
  close_hour: 17,
  latitude: 38.715034,
  longitude: -9.137011,

  })
location.photo_urls = [
  'https://www.coworkcentral.pt/media/images/services/private-rooms.jpg',
  'http://blog.rumbo.pt/wp-content/uploads/sites/16/2017/02/coworkcentral-coworking-lisboa-1024x512.jpg',
  'https://static1.squarespace.com/static/52fcc48ce4b03f845db4aa7f/52fdf05be4b0feb85ec3644f/56d82927b654f9f9ecd0096d/1457008498328/?format=1500w',
  'http://res.cloudinary.com/dzxgxofdh/image/upload/c_scale,q_70,w_800/v1504281616/workhub%20gallery/YellowSavages-Workhub-17.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Red Frog",
  email: "redfrog@gmail.com",
  address: "Rua do Salitre 5A, 1250-196 Lisboa",
  phone: "21 5831120",
  description: "Inspired by cocktail bars in New York and London during the dry season",
  capacity: 15,
  rate_by_hour: 2,
  rate_by_day: 12,
  rate_by_week: 30,
  features: FEATURES.sample(2),
  tags:  TAGS.sample(2),
  rules: RULES.sample(2),
  open_hour: 10,
  close_hour: 18,
  latitude: 38.715035,
  longitude: -9.137011
  })
location.photo_urls = [
  'http://s3cdn.observador.pt/wp-content/uploads/2015/05/redfrogtp15052015-31.jpg',
  'https://cdn.londonandpartners.com/asset/e9a69784717d5f540e4a77fbe7b0c2e3.jpg',
  'https://www.google.pt/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwibue7jv9rXAhUD7RQKHUbMDl0QjBwIBA&url=https%3A%2F%2Fwww.quintessentially.com%2Fmedia%2F960x0%2F558ab241094c3.jpg&psig=AOvVaw29C-WCB1K6pnt6LsbHQ8lH&ust=1511725780293595',
  'https://www.google.pt/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&ved=0ahUKEwiWif2Qy9rXAhUCxxQKHVXwD1MQjBwIBA&url=http%3A%2F%2Fthetaste.ie%2Fwp%2Fwp-content%2Fuploads%2F2016%2F04%2FMarks-bar-2.jpg&psig=AOvVaw29C-WCB1K6pnt6LsbHQ8lH&ust=1511725780293595'
]
location.save

location = Location.create({
 user_id: User.all.sample.id,
 name: "Double9",
 email: "double9@gmail.com",
 address: "Hotel Mercy, Rua da Misericórdia, 76, Chiado, Lisboa",
 phone: "221 2481480",
 description: "A modern tea house, transformed into a coworking and chillout space, where you can work during the day and sample some cocktails made to order at night",
 capacity: 25,
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
location.photo_urls = [
  'https://www.9-hotel-mercy-lisbon.pt/imgcache/f4dc544d8690c5a5368f30ad0a45f81b_w1138_h488_cp.jpg',
  'https://mb.web.sapo.io/3999df53d6bc1d2307577b264a62f7c51ca4d2f6.jpg',
  'https://d1u4v68pfiv879.cloudfront.net/media/13002/bar-double9_chiado_lisbon-shopping.jpg',
]
location.save


location = Location.create({
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
location.photo_urls = [
  'http://static.savoteur.com/uploads/content_image/image/2616/Cave23.jpg',
  'https://u.tfstatic.com/restaurant_photos/337/295337/169/612/cave-23-vista-do-interior-4fffc.jpg',
  'http://lisboa.convida.pt/images/POIs/Terraco23-ConVida2017-010.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Edwards Place",
  email: "eduardo@love.com",
  address: "Gran Vía, 66, 28013 Madrid, España",
  phone: "21 8298071",
  description: "Plenty of space at my place with all the facilities and a gym in the building that you can use if you desire too. Usually designers and people related with
  the luxury start-up industry",
  capacity: 9,
  rate_by_hour: 5,
  rate_by_day: 10,
  rate_by_week: 34,
  features: FEATURES.sample(4),
  tags:  TAGS.sample(2),
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 17,
  latitude:  40.422413,
  longitude: -3.708938
  })
location.photo_urls = [
  'https://static.wixstatic.com/media/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_32584af7a82d498789fd8ecd072d68da~mv2_d_3976_2651_s_4_2.webp',
  'https://static.wixstatic.com/media/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.jpg/v1/fill/w_636,h_424,al_c,q_90,usm_0.66_1.00_0.01/441a2a_cf5d00f42cac4b0eaa9dca1a810086dd~mv2_d_4080_2720_s_4_2.webp',
  'https://www.billboard.com/files/media/03-Mass-Appeal-office-space-2017-billboard-embed.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Park",
  email: "park@gmail.com",
  address: "Calçada do Combro 58, 1200-109 Lisboa",
  phone: "21 591 4011",
  description: "Hidden in the heart of Lisbon, fully recommended co-working space. Good atmosphere and plenty of space.
  You can not miss this place with  one of the best views of the city ",
  capacity: "6",
  rate_by_hour: 5,
  rate_by_day: 10,
  rate_by_week: 25,
  features: FEATURES.sample(4),
  tags: TAGS.sample(2),
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 17,
    latitude:  38.711020,
  longitude: -9.147560
  })
location.photo_urls = [
  'http://4.bp.blogspot.com/-r0rcHrhdWa8/UrawkIduvHI/AAAAAAAAARI/O6HZp5opbnk/s1600/IMG_8265.JPG',
  'https://lifecooler.com/files/registos/imagens/437845/269020.jpg',
  'http://blog.secretplaces.com/wp-content/uploads/2016/07/Park2.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "IsaYa Lounge",
  email: "Isahias@yahoo.com",
  address: "Gran Vía, 12, 28013 Madrid, España",
  phone: "91 5773322",
  description: "A whole floor designed for the comfort of nomad people right in the city center of Madrid. Normally full of
  of freelancers and creative spirits",
  capacity: 27,
  rate_by_hour: 5,
  rate_by_day: 10,
  rate_by_week: 25,
  features: FEATURES.sample(4),
  tags:  TAGS.sample(2),
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 20,
  latitude:  40.419644,
  longitude: -3.698868
  })
location.photo_urls = [
  'https://cdn.wework.com/locations/image/11849c9a-4ebb-11e6-a56f-0a488af3e541/charging-bull-office-space-20.jpg?auto=compress%2Cformat&w=1200&h=600&fit=crop',
  'https://www.homepolish.com/wp-content/uploads/Homepolish-3632-decorating-3aa8613a.jpeg',
  'https://comunalcoworking.com/wp-content/uploads/2017/06/benavidesmiraflores-benavides_DSC1079-600x600_c.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Mikes Place",
  email: "mike@gmail.com",
  address: "Av. de Pío XII, 25, 28016 Madrid, España",
  phone: "+34 913 53 07 80",
  description: "I have just reformed my home to host nomads from all around the world. In this house you find all a nomad can need",
  capacity: "6",
  rate_by_hour: 5,
  rate_by_day: 10,
  rate_by_week: 25,
  features: FEATURES.sample(4),
  tags:  TAGS.sample(2),
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 19,
    latitude:  40.462889,
  longitude: -3.676546
  })
location.photo_urls = [
  'https://blog.liquidspace.com/wp-content/uploads/2017/05/7ef60e93-ba4a-4db0-82d7-f4b53714b236.jpeg',
  'https://officesnapshots.com/wp-content/uploads/2015/06/wework-nyc-office-design-1-700x467.jpg',
  'https://i.pinimg.com/originals/82/44/04/8244040d6eaeb66f0f24bd40ff1d4d0e.jpg'
]
location.save


location = Location.create({
  user_id: User.all.sample.id,
  name: "#MOIST",
  email: "moist@gmail.com",
  address: "Calle San Lucas, 13, 28004 Madrid, España",
  phone: "+34 915 13 54 66",
  description: "Industrial style space warmed up with central heating during winter. Collaborative and productive atmosphere
  where  nomad travellers spend weeks or months while completing their projects. Highly recommended if you want to network
  in Madrid" ,
  capacity: "8",
  rate_by_hour: 2,
  rate_by_day: 8,
  rate_by_week: 30,
  features: FEATURES.sample(4),
  tags:  "#Industrial #Rommy",
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 21,
      latitude:  40.423772,
  longitude: -3.696008
  })
location.photo_urls = [
  'http://esdipberlin.com/wp-content/uploads/11080623_684963288313799_3898966742149368400_o.jpg',
  'https://artconnect.s3-eu-west-1.amazonaws.com/attachments/87414/original.jpg?1423259056',
  'https://s3-eu-west-1.amazonaws.com/hubblehq/hubble/uploads/wyswigy/greenhouse-coworking.jpg'
]
location.save

location = Location.create({
  user_id: User.all.sample.id,
  name: "Workon",
  email: "peter11@gmail.com",
  address: "Calle Mateo Inurria, 33, 28036 Madrid, España",
  phone: "+34 915 13 54 66",
  description: "Big open space with many available spaces, outlets, wi-fi. Great place to get things done while meeting new
  and interesting people",
  capacity: "40",
  rate_by_hour: 2,
  rate_by_day: 8,
  rate_by_week: 30,
  features: FEATURES.sample(4),
  tags:  "#Industrial #Rommy",
  rules: RULES.sample(2),
  open_hour: 9,
  close_hour: 21,
        latitude:  40.467590,
  longitude: -3.681164
  })
location.photo_urls = [
  'https://breather.imgix.net/locations/p/853-broadway-1211-2-1489605745352.jpg',
  'https://breather.imgix.net/locations/p/295madison2_1469937300009.jpg?w=355',
  'http://genylabs.typepad.com/.a/6a00d8345675df69e201b8d2b6c0cf970c-pi'
]
location.save

puts "create 15 fake booking"

15.times do
  booking = Booking.create(
    user_id: User.all.sample.id,
    location_id: Location.all.sample.id,
    begin: Faker::Date.backward(5),
    end: Faker::Date.forward(5),
    status: "Pending",
    owner_feedback: (0..5).to_a.sample,
    worker_feedback: (0..5).to_a.sample,
    worker_review: Faker::ChuckNorris.fact,
    price: (30..135).to_a.sample
    )
end
