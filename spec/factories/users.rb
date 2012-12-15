# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email){|n| "user#{n}@factory.com"}
    password Faker::Base.bothify("Tlsakdjfh3425")
  end
end
