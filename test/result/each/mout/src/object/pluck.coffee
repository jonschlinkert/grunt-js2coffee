define ["./map", "../function/prop"], (map, prop) ->
  
  ###
  Extract a list of property values.
  ###
  pluck = (obj, propName) ->
    map obj, prop(propName)
  pluck
