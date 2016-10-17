FactoryGirl.define do
  factory :product do
    name              { Faker::Name.name}
    price             { Faker::Commerce.price }
    user              nil
  end
end