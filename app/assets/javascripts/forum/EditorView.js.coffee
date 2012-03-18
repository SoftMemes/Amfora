define (require, exports, module) ->
  $            = require('jquery')
  Backbone     = require('backbone')
  Markdown     = require('markdown')
  idGenerator  = require('utils/id_generator')
  viewTemplate = require('tpl!./EditorView.html.tpl')

  class PostView extends Backbone.View
    initialize: () ->
      @idSuffix = idGenerator.generateId()

    render: () ->
      @$el.html(viewTemplate {idSuffix: @idSuffix})

      converter = Markdown.getSanitizingConverter()
      @editor = new Markdown.Editor(converter, @idSuffix)
      @editor.run()
