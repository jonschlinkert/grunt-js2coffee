define ["./map"], (map) ->
  
  ###
  Extract a list of property values.
  ###
  pluck = (list, key) ->
    map list, (value) ->
      value[key]

  pluck
