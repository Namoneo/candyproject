FactoryGirl.define do
  factory :profile do
    first_name       { Faker::Name.first_name }
    last_name        { Faker::Name.last_name }
    street_address   { Faker::Lorem.sentence}
    number           1
    city             { Faker::Lorem.sentence}
    zip_code         1234
    state_region     { Faker::Lorem.sentence}
    country          { Faker::Lorem.sentence}
  end
end
