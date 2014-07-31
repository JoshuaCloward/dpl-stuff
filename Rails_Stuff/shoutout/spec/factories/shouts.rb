# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shout do

      message{ Faker::BaconIpsum.paragraph }
  end
end
