define ->
  
  ###
  get "nested" object property
  ###
  get = (obj, prop) ->
    parts = prop.split(".")
    last = parts.pop()
    while prop = parts.shift()
      obj = obj[prop]
      return  if typeof obj isnt "object"
    obj[last]
  get
