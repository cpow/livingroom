#= require application

describe "Livingroom.Models.RentalProperty:", ->
  it "should be defined", ->
    expect(Livingroom.Models.RentalProperty).toBeDefined()

  it "can be instantiated", ->
    expect(new Livingroom.Models.RentalProperty()).not.toBeNull()
