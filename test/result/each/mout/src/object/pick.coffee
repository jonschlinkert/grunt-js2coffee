define ->
  
  ###
  Return a copy of the object, filtered to only have values for the whitelisted keys.
  ###
  pick = (obj, var_keys) ->
    keys = (if typeof arguments_[1] isnt "string" then arguments_[1] else Array::slice.call(arguments_, 1))
    out = {}
    i = 0
    key = undefined
    out[key] = obj[key]  while key = keys[i++]
    out
  pick
