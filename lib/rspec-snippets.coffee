RspecSnippetsView = require './rspec-snippets-view'

module.exports =
  rspecSnippetsView: null

  activate: (state) ->
    @rspecSnippetsView = new RspecSnippetsView(state.rspecSnippetsViewState)

  deactivate: ->
    @rspecSnippetsView.destroy()

  serialize: ->
    rspecSnippetsViewState: @rspecSnippetsView.serialize()
