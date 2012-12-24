FactoryGirl.define do
  factory :property do
    name Faker::Name.first_name
    address1 Faker::Address.street_address
    city Faker::Address.city
    zip Faker::Address.zip_code
    state Faker::Address.state
    after(:build){|p| p.property_type = FactoryGirl.create(:multi_family)}
    after(:build){|p| p.user = FactoryGirl.create(:user)}
  end
end