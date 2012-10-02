class Livingroom.Routers.RentalProperties extends Backbone.Router
  routes:
    '': 'index'
    'rentalproperties/:id': 'show'

  index: ->
    view = new Livingroom.Views.RentalPropertiesIndex()
    $("#container").html(view.render().el)

  show: (id) ->
    alert "rental property #{id}"
