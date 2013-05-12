define ["../array/forEach"], (forEach) ->
  
  ###
  Create nested object if non-existent
  ###
  namespace = (obj, path) ->
    return obj  unless path
    forEach path.split("."), (key) ->
      obj[key] = {}  unless obj[key]
      obj = obj[key]

    obj
  namespace
