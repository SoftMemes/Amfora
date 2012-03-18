define ['backbone.marionette'], (Marionette) ->
  class extends Marionette.AppRouter
    appRoutes:
      "posts/:id/:slug": "showPost"
