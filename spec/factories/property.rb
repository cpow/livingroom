FactoryGirl.define do
  factory :property do
    name Faker::Name.first_name
  end
end