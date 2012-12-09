FactoryGirl.define do
  factory :property do
    name Faker::Name.first_name
    after(:create){|p| p.property_type = FactoryGirl.create(:multi_family)}
  end
end