require ['jquery', 'backbone', 'router', 'views/ApplicationView'], ($, Backbone, Router, ApplicationView) ->
  $ ->
    @rootView = new ApplicationView(el: $('.rootViewContainer')[0])
    @rootView.render()
    @router = new Router({controller: @rootView})
    x = Backbone.history.start({pushState: true, root: "/"})
    42
