define ["./isNumber"], (isNumber) ->
  
  ###
  Check if value is finite
  ###
  isFinite = (val) ->
    is_ = false
    if typeof val is "string" and val isnt ""
      is_ = global.isFinite(parseFloat(val))
    
    # need to use isNumber because of Number constructor
    else is_ = global.isFinite(val)  if isNumber(val)
    is_
  global = this
  isFinite
