# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name{Faker::Name.first_name}
    last_name{Faker::Name.last_name}
    moods = ["Angry", "Happy", "Sad"]
    mood{moods[rand(3)]}
  end
end
