require ['jquery', 'backbone', 'forum/PostView'], ($, Backbone, PostView) ->

  # Start up the app once the DOM is ready
  $ ->
    view = new PostView({el: $('.content')[0]})
    view.render()
