class Supportland.Routers.QuizzesRouter extends Backbone.Router

  routes:
    'admin/quizzes': 'index'
    'admin/quizzes/new': 'new'

  initialize: (options) ->

  index: ->

  new: ->
  	$('#quiz_start_date').datepicker()

