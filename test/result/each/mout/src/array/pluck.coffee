define ["./map"], (map) ->
  
  ###
  Extract a list of property values.
  ###
  pluck = (arr, propName) ->
    map arr, propName
  pluck
