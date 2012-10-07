describe "Livingroom.Models.RentalProperty:", ->
  it "should be defined", ->
    expect(Livingroom.Models.RentalProperty).toBeDefined()

  it "can be instantiated", ->
    expect(new Livingroom.Models.RentalProperty()).not.toBeNull()

  describe "attributes", ->
    property = new Livingroom.Models.RentalProperty()
    it "should have address attributes", ->
      expect(property.attributes.street1).toBeDefined()
      expect(property.attributes.street2).toBeDefined()
      expect(property.attributes.city).toBeDefined()
      expect(property.attributes.state).toBeDefined()
      expect(property.attributes.zip).toBeDefined()

