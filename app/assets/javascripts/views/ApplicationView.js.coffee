define (require, exports, module) ->
  $            = require('jquery')
  Backbone     = require('backbone')
  PostPageView = require('views/posts/PostPageView')
  viewTemplate = require('tpl!templates/ApplicationView.html.tpl')

  class extends Backbone.View
    initialize: ->

    render: ->
      @$el.html(viewTemplate())

    showPost: (id, slug) ->
      @postPageView = new PostPageView(el: @$('.contentViewContainer')[0], postId: id)
      @postPageView.render()
