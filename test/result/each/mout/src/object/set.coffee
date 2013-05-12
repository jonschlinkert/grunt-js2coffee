define ["./namespace"], (namespace) ->
  
  ###
  set "nested" object property
  ###
  set = (obj, prop, val) ->
    parts = (/^(.+)\.(.+)$/).exec(prop)
    if parts
      namespace(obj, parts[1])[parts[2]] = val
    else
      obj[prop] = val
  set
