#= require application

describe "Livingroom.Models.RentalProperty:", ->
  it "should be defined", ->
    expect(Livingroom.Models.RentalProperty).toBeDefined()

  it "can be instantiated", ->
    expect(new Livingroom.Models.RentalProperty()).not.toBeNull()

  describe "attributes", ->
    property = new Livingroom.Models.RentalProperty()
    it "should have an address", ->
      expect(property.attributes.address).toBeDefined()
