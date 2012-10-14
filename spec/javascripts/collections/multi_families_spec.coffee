describe "Livingroom.Collections.MultiFamilies:", ->
  describe "instantiating collection with fake model", ->
    beforeEach ->
      @multi_family_stub = sinon.stub window.Livingroom.Models, "MultiFamily"
      @model = new Backbone.Model({
        id: 5,
        name: "marlborough house"
        })
      @multi_family_stub.returns(@model)
      @multi_families = new Livingroom.Collections.MultiFamilies
      @multi_families.model = @multi_family_stub
      @multi_families.add({
        id: 5,
        name: "marlborough house"
        })

    afterEach ->
      @multi_family_stub.restore()

    it "should add a model", ->
      expect(@multi_families.length).toEqual(1)

    it "should find a model by id", ->
      expect(@multi_families.get(5).get("id")).toEqual(5)

  describe "server responses", ->
    beforeEach ->
      @server = sinon.fakeServer.create()
      @server.respondWith(
        "GET",
        "/multi_families",
        [
          200,
          {"Content-Type": "application/json"},
          '{"response": "json response here"}'
        ]
        )
      @multi_families = new Livingroom.Collections.MultiFamilies

    afterEach ->
      @server.restore()

    it "should make the correct request", ->
      @multi_families.fetch()
      expect(@server.requests.length).toEqual(1)
      expect(@server.requests[0].method).toEqual("GET")
      expect(@server.requests[0].url).toEqual("/multi_families")