describe "Livingroom.Models.RentalProperty:", ->
  it "should be defined", ->
    expect(Livingroom.Models.RentalProperty).toBeDefined()

  it "can be instantiated", ->
    expect(new Livingroom.Models.RentalProperty()).not.toBeNull()

  describe "creating new rentalproperty", ->
    beforeEach ->
      @rental_property = new Livingroom.Models.RentalProperty(something: "hi")

    it "should be accessible", ->
      expect(@rental_property.get("something")).toEqual("hi")