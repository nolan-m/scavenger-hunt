# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guess do
    played_game_id 1
    user_id 1
    location_id 2
  end
end
