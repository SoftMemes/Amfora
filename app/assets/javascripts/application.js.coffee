require ['jquery', 'backbone', 'forum/PostView', 'forum/EditorView'], ($, Backbone, PostView, EditorView) ->

  # Start up the app once the DOM is ready
  $ ->
    view = new PostView({el: $('.content')[0]})
    view.render()

    editorView = new EditorView({el: $('.editor')[0]})
    editorView.render()
