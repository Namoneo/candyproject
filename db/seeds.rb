# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Product.delete_all
Category.delete_all

namoneo = User.create(email: "namoneo@icloud.com", password: "secret")
admin = User.create(email: "admin@admin.com", password: "secret", admin: "true")

namoneo.profile = Profile.create(first_name: "Malenka", last_name: "van Ommen", street_address: "Blablabla", number: "42", city: "Arnhem", zip_code: "1234ab", state_region: "Gelderland", country: "Netherland")
admin.profile = Profile.create(first_name: "Admin", last_name: "Admin", street_address: "Adminstreet", number: 1, city: "Madrid", zip_code: "5678er", state_region: "Adminplace", country: "Spain")

product1 = Product.create( { name: "Mike Ike minion box", price: 2.50,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/mike.jpg?width=190&height=190" } )
product2 = Product.create( { name: "Cheetos crunchy flaming hot", price: 3, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/cheetos_flaminhot.jpg?width=190&height=190" } )
product3 = Product.create( { name: "Lemonhead Chewy Citrus box", price: 2.50, user_id: 2, image:"http://jamin-sc.tritac.com/prodimg/partners/89/files/248037(2).png?width=190&height=190" } )
product4 = Product.create( { name: "Skittles sweet-sour box", price: 2.75,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/files/248053.jpg?width=190&height=190" } )
product5 = Product.create( { name: "Reeses crunchy King size", price: 2.40, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/crunchy-king-size(2).png?width=190&height=190" } )
product6 = Product.create( { name: "Oreo cinamon bun", price: 7.25, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/Oreo%20cinnamon%20bun.jpg?width=190&height=190" } )
product7 = Product.create( { name: "Simpsons Duff energy drink", price: 2, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/8a108188f876466b3d4dc5f975811cdf.jpg?width=190&height=190" } )
product8 = Product.create( { name: "Juicy drop gummies", price: 2.75, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/Juicy-Drops-Gummy.png?width=190&height=190" } )
product9 = Product.create( { name: "Jelly Belly box Harry Potter", price: 3, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/files/JELLY_BELLY_BEANS_HARRY_POTTER_BERTIE_BOTT_S_400.jpg?width=190&height=190" } )
product10 = Product.create( { name: "Yan Yan Strawberry", price: 2,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/15717(1).jpg?width=262&height=262" } )
product11 = Product.create( { name: "Yan Yan Vanilla", price: 2, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/19186.jpg?width=190&height=190" } )
product12 = Product.create( { name: "DIY Icebar soft candy", price: 3, user_id: 2, image:"http://jamin-sc.tritac.com/prodimg/partners/89/diy%20ice%20bar%20soft%20candy.jpg?width=190&height=190" } )
product13 = Product.create( { name: "Popin Cooking donut box", price: 6,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/135496.jpg?width=190&height=190" } )
product14 = Product.create( { name: "Popin Cooking candy land box", price: 6, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/71bBRCDInmL__SX425_.jpg?width=190&height=190" } )
product15 = Product.create( { name: "Popin Cooking sushi grape box", price: 6, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/135534.jpg?width=190&height=190" } )
product16 = Product.create( { name: "Popin Cooking rama land", price: 3.50, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/247251.jpg?width=190&height=190" } )
product17 = Product.create( { name: "DIY Waku Waku soft candy", price: 3, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/131121.jpg?width=190&height=190" } )
product18 = Product.create( { name: "DIY Choco banana soft", price: 3, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/131148.jpg?width=190&height=190" } )
product19 = Product.create( { name: "20 sweet dropstrings", price: 1.50,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/126705.jpg?width=190&height=190" } )
product20 = Product.create( { name: "Thumbdrop", price: 1.30, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/222763.jpg?width=190&height=190" } )
product21 = Product.create( { name: "Birthhearts pink-white", price: 11, user_id: 2, image:"http://jamin-sc.tritac.com/prodimg//productimages/223085.jpg?width=190&height=190" } )
product22 = Product.create( { name: "Birthhearts blue-white", price: 11,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/223182.jpg?width=190&height=190" } )
product23 = Product.create( { name: "Brussels manneke drop", price: 11, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/230987.jpg?width=190&height=190" } )
product24 = Product.create( { name: "Chocolateflikken birth girl", price: 50, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/127035.jpg?width=190&height=190" } )
product25 = Product.create( { name: "Chocolateflikken birth boy", price: 50, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/229369.jpg?width=190&height=190" } )
product26 = Product.create( { name: "Choco beats koptelefoon red", price: 15,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/23817.jpg?width=262&height=262" } )
product27 = Product.create( { name: "Chocophone melk  ", price: 3.50, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg/partners/89/JMN_Chocophone_Verpakking_Melk.jpg?width=190&height=190" } )
product28 = Product.create( { name: "Chocomedal I like", price: 1, user_id: 2, image:"http://jamin-sc.tritac.com/prodimg//productimages/226351.jpg?width=190&height=190" } )
product29 = Product.create( { name: "Chocololly mustache", price: 2.50,  user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/18449.jpg?width=190&height=190" } )
product30 = Product.create( { name: "Tony chocoloney meringue cherry", price: 3.50, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/16268.jpg?width=190&height=190" } )
product31 = Product.create( { name: "Tony chocoloney coffee crunch", price: 3.50, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/16233.jpg?width=190&height=190" } )
product32 = Product.create( { name: "Tony chocoloney caramel seasalt", price: 3.25, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/16241.jpg?width=190&height=190" } )
product33 = Product.create( { name: "Celebration bottle XL", price: 8.75, user_id: 2, image: "http://jamin-sc.tritac.com/prodimg//productimages/725137.jpg?width=190&height=190" } )

category1 = Category.create(name: "Dutch candy")
category2 = Category.create(name: "Japanese candy")
category3 = Category.create(name: "American candy")
category4 = Category.create(name: "Chocolate")

category1.products << [product19, product20, product21, product22, product23, product24, product25]
category1.save

category2.products << [product10, product11, product12, product13, product14, product15, product15, product16, product17, product18]
category2.save

category3.products << [product1, product2, product3, product4, product5, product6, product7, product8, product9]
category3.save

category4.products << [product26, product27, product28, product29, product30, product31, product32, product33]
category4.save