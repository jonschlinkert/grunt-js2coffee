define ["./has"], (has) ->
  
  ###
  Unset object property.
  ###
  unset = (obj, prop) ->
    if has(obj, prop)
      parts = prop.split(".")
      last = parts.pop()
      obj = obj[prop]  while prop = parts.shift()
      delete obj[last]
    else
      
      # if property doesn't exist treat as deleted
      true
  unset
