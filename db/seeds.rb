# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    password: '123456789'
  )
end

# 100.times do
#   Game.create(
#     title: Faker::Game.title,
#     description: Faker::Lorem.paragraphs(number: 1),
#     image_url: Faker::LoremFlickr.image,
#     user_id: rand(2..15),
#     condition: ['good', 'fair', 'poor'].sample
#   )
# end

Game.create(
    title: "Pandemic",
    description: "Your team of experts must prevent the world from succumbing to a viral pandemic.",
    image_url: "https://cf.geekdo-images.com/S3ybV1LAp-8SnHIXLLjVqA__itemrep/img/wAMLbgihOl7dJDHnvqt7OXKEV-4=/fit-in/246x300/filters:strip_icc()/pic1534148.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Carcassonne",
    description: "Shape the medieval landscape of France, claiming cities, monasteries and farms.",
    image_url: "https://cf.geekdo-images.com/okM0dq_bEXnbyQTOvHfwRA__itemrep/img/_GLRhUoVx6Zp4kTE0rv_gi9cyOQ=/fit-in/246x300/filters:strip_icc()/pic6544250.png",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Catan",
    description: "Collect and trade resources to build up the island of Catan in this modern classic.",
    image_url: "https://cf.geekdo-images.com/W3Bsga_uLP9kO91gZ7H8yw__itemrep/img/IzYEUm_gWFuRFOL8gQYqGm5gU6A=/fit-in/246x300/filters:strip_icc()/pic2419375.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "7 Wonders",
    description: "Draft cards to develop your ancient civilization and build its Wonder of the World.",
    image_url: "https://cf.geekdo-images.com/RvFVTEpnbb4NM7k0IF8V7A__itemrep/img/F__zhk-OFDgFcMBysW2JlcYJADw=/fit-in/246x300/filters:strip_icc()/pic860217.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Dominion",
    description: "Acquire the most valuable lands by building your deck with treasure and power cards.",
    image_url: "https://cf.geekdo-images.com/j6iQpZ4XkemZP07HNCODBA__itemrep/img/_QiaiFj-LGZoqdatE-wVqNaYWx8=/fit-in/246x300/filters:strip_icc()/pic394356.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Ticket to Ride",
    description: "Build your railroad across North America to connect cities and complete tickets.",
    image_url: "https://cf.geekdo-images.com/ZWJg0dCdrWHxVnc0eFXK8w__imagepage/img/FcSGmLeIStNfb0l_qKSuOyz-rHY=/fit-in/900x600/filters:no_upscale():strip_icc()/pic38668.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Terraforming Mars",
    description: "Compete with rival CEOs to make Mars habitable and build your corporate empire.",
    image_url: "https://cf.geekdo-images.com/wg9oOLcsKvDesSUdZQ4rxw__itemrep/img/IwUOQfhP5c0KcRJBY4X_hi3LpsY=/fit-in/246x300/filters:strip_icc()/pic3536616.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Codenames",
    description: "Give your team clever one-word clues to help them spot their agents in the field.",
    image_url: "https://cf.geekdo-images.com/F_KDEu0GjdClml8N7c8Imw__itemrep/img/e8zw8YQvQB8q8zfWkHQ48Ls920g=/fit-in/246x300/filters:strip_icc()/pic2582929.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "7 Wonders Duel",
    description: "Science? Military? What will you draft to win this head-to-head version of 7 Wonders?",
    image_url: "https://cf.geekdo-images.com/WzNs1mA_o22ZWTR8fkLP2g__itemrep/img/sDjIG76VOwrlySbj_5rdnAaWO_0=/fit-in/246x300/filters:strip_icc()/pic3376065.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Agricola",
    description: "Build your farmstead by sowing fields and raising livestock. But don't forget to eat!",
    image_url: "https://cf.geekdo-images.com/dDDo2Hexl80ucK1IlqTk-g__itemrep/img/DzC9cA0TNmWUO7WLdl4-uFHfO_k=/fit-in/246x300/filters:strip_icc()/pic831744.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Puerto Rico",
    description: "Ship goods, construct buildings, and choose roles that benefit you more than others.",
    image_url: "https://cf.geekdo-images.com/7k_nOxpO9OGIjhLq2BUZdA__micro/img/ETplc22GdhlN5u0mppcDxSP8LVk=/fit-in/64x64/filters:strip_icc()/pic3163924.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Scythe",
    description: "Five factions vie for dominance in a war-torn, mech-filled, dieselpunk 1920s Europe.",
    image_url: "https://cf.geekdo-images.com/7k_nOxpO9OGIjhLq2BUZdA__itemrep/img/RVh5N-_HcMziJ3M6Q1eLTlj8XIQ=/fit-in/246x300/filters:strip_icc()/pic3163924.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Splendour",
    description: "Renaissance merchants race to grab gems, acquire property, and please nobility.",
    image_url: "https://cf.geekdo-images.com/rwOMxx4q5yuElIvo-1-OFw__itemrep/img/NaQx3XWoNAOMDGl4AXf4nxlhHo0=/fit-in/246x300/filters:strip_icc()/pic1904079.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Small World",
    description: "Control one fantasy race after another to expand quickly throughout the land.",
    image_url: "https://cf.geekdo-images.com/aoPM07XzoceB-RydLh08zA__itemrep/img/vxZGxHhrtnOMxPM38WNIu-tfYmI=/fit-in/246x300/filters:strip_icc()/pic428828.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Azul",
    description: "Artfully embellish the walls of your palace by drafting the most beautiful tiles.",
    image_url: "https://cf.geekdo-images.com/tz19PfklMdAdjxV9WArraA__itemrep/img/EuG9Te3VDhT58DlEYeEVVunM5wY=/fit-in/246x300/filters:strip_icc()/pic3718275.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Ticket to Ride: Europe",
    description: "Build train routes across Europe in this sequel to the hit family board game.",
    image_url: "https://cf.geekdo-images.com/0K1AOciqlMVUWFPLTJSiww__itemrep/img/D9gFnF3e-NXcVjvkNUsn19C7cHQ=/fit-in/246x300/filters:strip_icc()/pic66668.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "King of Tokyo",
    description: "It's a fight to the death when giant monsters battle over Tokyo in this dice-roller.",
    image_url: "https://cf.geekdo-images.com/m_RzXpHURC0_xLkvRSR_sw__itemrep/img/HVllMOifrnS8P1Ygzj7Teo_rwA4=/fit-in/246x300/filters:strip_icc()/pic3043734.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Love Letter",
    description: "Can you get a letter to the princess or remove all your rivals? You win either way!",
    image_url: "https://cf.geekdo-images.com/T1ltXwapFUtghS9A7_tf4g__itemrep/img/SJxpAXjBIPEj9m6hHZYeTbz9wzc=/fit-in/246x300/filters:strip_icc()/pic1401448.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Power Grid",
    description: "Bid, network, and manage resources in a race to supply the most cities with power.",
    image_url: "https://cf.geekdo-images.com/yd6LuatytHRhcFCxCf-EEg__itemrep/img/LsqKzcnoaVUlSUmLxFE8dwxFndk=/fit-in/246x300/filters:strip_icc()/pic4459753.jpg",
    user_id: rand(2..18),
    condition: ['good', 'fair', 'poor'].sample
  )

Game.create(
    title: "Wingspan",
    description: "Attract a beautiful and diverse collection of birds to your wildlife reserve.",
    image_url: "https://cf.geekdo-images.com/yLZJCVLlIx4c7eJEWUNJ7w__itemrep/img/DR7181wU4sHT6gn6Q1XccpPxNHg=/fit-in/246x300/filters:strip_icc()/pic4458123.jpg",
    user_id: '21',
    condition: ['good', 'fair', 'poor'].sample
  )

  Game.create(
    title: "Carcassonne",
    description: "Shape the medieval landscape of France, claiming cities, monasteries and farms.",
    image_url: "https://cf.geekdo-images.com/okM0dq_bEXnbyQTOvHfwRA__itemrep/img/_GLRhUoVx6Zp4kTE0rv_gi9cyOQ=/fit-in/246x300/filters:strip_icc()/pic6544250.png",
    user_id: '21',
    condition: ['good', 'fair', 'poor'].sample
  )
