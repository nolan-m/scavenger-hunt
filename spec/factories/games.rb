# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    name { Faker::Company.name }
    user_id 1
    location_id 1
  end
end
