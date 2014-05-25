app.filter 'filename', ->
  (input) ->
    input.substring input.lastIndexOf('/') + 1
