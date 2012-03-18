define ['jquery', 'models'], ($, models) ->
  getPostById: (id) ->
    $.ajax("/api/posts/#{id}.json")
     .pipe((post) -> new models.PostModel(post))

  getPostReplies: (postId) ->
    $.ajax("/api/posts/#{postId}/replies.json")
     .pipe((replies) -> new models.PostCollection(replies))
