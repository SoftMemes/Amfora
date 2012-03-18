define (require, exports, module) ->
  $            = require('jquery')
  Backbone     = require('backbone')
  Views        = require('views/Views')
  viewTemplate = require('tpl!templates/posts/PostView.html.tpl')

  class extends Views.ItemView
    template: viewTemplate
