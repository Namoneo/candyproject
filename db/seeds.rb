# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.delete_all
Profile.delete_all
Product.delete_all
User.delete_all


# Users
moder = User.create(email: "info@admin.com", password: "secret")
admin = User.create(email: "admin@admin.com", password: "secret")

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dxgzovwd1/image/upload/v1476444143/mike_u1mn6h.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dxgzovwd1/image/upload/v1476444143/cheetos_flaminhot_sthgbz.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dxgzovwd1/image/upload/v1476444143/248037_2_bp9wu6.png")


# Products
Product.create(name: "Mike Ike minion box", price: 2.50,  user_id: 2, photos: [photo1])
Product.create(name: "Cheetos crunchy flaming hot", price: 3, user_id: 2, photos: [photo2])
Product.create(name: "Mike Ike minion box", price: 2.50,  user_id: 2, photos: [photo3])
