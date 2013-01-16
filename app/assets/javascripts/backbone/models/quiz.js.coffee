class Supportland.Models.Quiz extends Backbone.Model
  paramRoot: 'quiz'

  # defaults:

class Supportland.Collections.QuizzesCollection extends Backbone.Collection
  model: Supportland.Models.Quiz
  url: '/quizzes'
