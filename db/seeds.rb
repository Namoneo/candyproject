Profile.delete_all
User.delete_all

malenka = User.create(email: "malenka@codaisseurbnb.com", password: "secret")
sinterklaas=User.create(email: "sinterklaas@codaisseurbnb.com", password: "secret")


malenka_profile = Profile.create(first_name: "Malenka", last_name: "van Ommen", street_address: "Blablabla", number: "42", city: "Arnhem", zip_code: "1234ab", state_region: "Gelderland", country: "Netherland")
sinterklaas_profile = Profile.create(first_name: "Sint", last_name: "Nicolaas", street_address: "Sintstreet", number: 1, city: "Madrid", zip_code: "5678er", state_region: "Sintplace", country: "Spain")


