# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :clue do
    game_id  1
    content { Faker::Company.catch_phrase }
  end
end
