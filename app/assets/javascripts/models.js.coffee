define ['backbone'], (Backbone) ->
  class PostModel extends Backbone.Model
  class PostCollection extends Backbone.Collection
    model: PostModel

  PostModel: PostModel
  PostCollection: PostCollection

