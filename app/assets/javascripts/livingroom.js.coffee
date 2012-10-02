window.Livingroom =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Livingroom.Routers.RentalProperties()
    Backbone.history.start()

$(document).ready ->
  Livingroom.init()
