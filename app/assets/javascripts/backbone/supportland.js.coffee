#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Supportland =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

  init: ->
  	new Supportland.Routers.QuizzesRouter()
  	Backbone.history.start({ pushState: true })

$(document).ready ->
  Supportland.init()
