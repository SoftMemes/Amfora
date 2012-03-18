define ['jquery', 'backbone', 'tpl!./PostView.html.tpl'], ($, Backbone, viewTemplate) ->
  class PostView extends Backbone.View
    render: () ->
      @$el.html(viewTemplate {test: "test"})
