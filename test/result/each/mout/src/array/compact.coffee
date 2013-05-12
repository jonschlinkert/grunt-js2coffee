define ["./filter"], (filter) ->
  
  ###
  Remove all null/undefined items from array.
  ###
  compact = (arr) ->
    filter arr, (val) ->
      val?

  compact
