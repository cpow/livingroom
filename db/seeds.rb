# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({
  email: "user@livingroom.com",
  password: "g00didea"
  })

Property.create(

  {name: "First Multi Family Property", 
    address1: Faker::Address.street_address, 
    city: Faker::Address.city, 
    zip: Faker::Address.zip_code, 
    state: Faker::Address.state, 
    property_type: MultiFamily.create(),
    user: User.first},

  {name: "First Single Family Property", 
    address1: Faker::Address.street_address, 
    city: Faker::Address.city, 
    zip: Faker::Address.zip_code, 
    state: Faker::Address.state, 
    property_type: SingleFamily.create(),
    user: User.first},
)