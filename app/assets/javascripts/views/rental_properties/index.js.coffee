class Livingroom.Views.RentalPropertiesIndex extends Backbone.View

  template: JST['rental_properties/index']

  render: ->
    $(@el).html(@template(properties: "these are some properties"))
    this