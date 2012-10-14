describe "Livingroom.Collections.MultiFamilies:", ->
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



