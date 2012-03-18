define (require, exports, module) ->
  $            = require('jquery')
  Backbone     = require('backbone')
  Views        = require('views/Views')
  PostView     = require('views/posts/PostView')

  class extends Views.CollectionView
    itemView: PostView
