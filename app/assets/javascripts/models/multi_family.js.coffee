class Livingroom.Models.MultiFamily extends Backbone.Model
  validate: (attrs) ->
    "cannot have an empty title"  unless attrs.name
