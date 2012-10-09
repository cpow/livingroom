describe "Livingroom.Models.MultiFamily:", ->

  it "should be defined", ->
    expect(Livingroom.Models.MultiFamily).toBeDefined()

  it "can be instantiated", ->
    expect(new Livingroom.Models.MultiFamily).not.toBeNull()

  describe "create new multi family property", ->
    beforeEach ->
      @multi_family = new Livingroom.Models.MultiFamily(
                          name: "marlborough house")

    it "should have been created", ->
      expect(@multi_family.get("name")).toEqual("marlborough house")

    describe "url", ->
      beforeEach ->
        collection =
            url: "/rental_properties"
        @multi_family.collection = collection

      describe "when no id is set", ->
        it "should set the url to rental_property collection", ->
          expect(@multi_family.url()).toEqual("/rental_properties")

      describe "when an id is set", ->
        it "should return url with the id", ->
          @multi_family.id = 1
          expect(@multi_family.url()).toEqual("/rental_properties/1")

      describe "validations", ->
        it "should not save when name is empty", ->
          eventSpy = sinon.spy()
          @multi_family.bind "error", eventSpy
          @multi_family.save name: ""
          expect(eventSpy).toHaveBeenCalledOnce()
          expect(eventSpy).toHaveBeenCalledWith(
            @multi_family,
            "cannot have an empty title"
          )
