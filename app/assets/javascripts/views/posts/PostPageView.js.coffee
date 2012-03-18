define (require, exports, module) ->
  $                   = require('jquery')
  Backbone            = require('backbone')
  postService         = require('services/post_service')
  PageView            = require('./PostView')
  PostView            = require('./PostView')
  PostCollectionView  = require('./PostCollectionView')
  viewTemplate        = require('tpl!templates/posts/PostPageView.html.tpl')

  class extends PageView
    initialize: (options) ->
      @postId = options.postId

    render: () ->
      @$el.html(viewTemplate())

      postService.getPostById(@postId)
        .done((post) =>
          @postView = new PostView(el: @$('.postViewContainer')[0], model: post)
          @postView.render())

      postService.getPostReplies(@postId)
        .done((replies) =>
          @repliesView = new PostCollectionView(el: @$('.repliesContainer')[0], collection: replies)
          @repliesView.render())
