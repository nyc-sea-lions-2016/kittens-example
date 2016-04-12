FactoryGirl.define do
   factory :kitten do
     name  { Faker::Name.first_name }
     breed { ['persian', 'american', 'siamese'].sample }
     temperament { Faker::Lorem.word }
     date_of_birth { Faker::Date.between(5.years.ago, 1.years.ago )}
   end

   factory :user do
    email { Faker::Internet.email }
    username { Faker::Internet.user_name }
    password "password"
   end
end