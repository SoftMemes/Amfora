define ['jquery', 'backbone', 'backbone.marionette'], ($, Backbone, Marionette) ->
  class PageView extends Backbone.View

  class ItemView extends Marionette.ItemView
    initialize: (options) ->
      if !options.model? && @Model?
        @model = new @Model()

    getTemplate: () -> @template
    renderTemplate: (template, data) -> template.call(this, data)

  class CollectionView extends Marionette.CollectionView
    initialize: () ->
      if @Collection?
        @collection = new @Collection()

  PageView: PageView
  ItemView: ItemView
  CollectionView: CollectionView
